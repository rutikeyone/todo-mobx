// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:to_do/core/domain/entity/notice.dart';
import 'package:to_do/core/domain/entity/notification_payload.dart';
import 'package:to_do/core/domain/service/notification_service.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tl;
import 'package:timezone/timezone.dart' as tz;

class NotificationServiceImpl extends NotificationService {
  final _notification = FlutterLocalNotificationsPlugin();
  final onNotification = BehaviorSubject<String?>();

  Future<InitializationSettings> _init({bool iniScheluted = false}) async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iOSSettings = IOSInitializationSettings();
    const settings =
        InitializationSettings(android: androidSettings, iOS: iOSSettings);
    final details = await _notification.getNotificationAppLaunchDetails();

    tl.initializeTimeZones();
    if (details != null && details.didNotificationLaunchApp) {
      onNotification.add(details.payload);
    }
    if (iniScheluted) {
      final locationName = await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(locationName));
    }
    return settings;
  }

  @override
  Future init({bool iniScheluted = false}) async {
    final settings = await _init(iniScheluted: iniScheluted);
    await _notification.initialize(
      settings,
      onSelectNotification: (payload) async {
        onNotification.add(payload);
      },
    );
  }

  @override
  Future initWithRemind(Function(int) selectRemind, Function(int) selectTask,
      {bool iniScheluted = false}) async {
    final settings = await _init(iniScheluted: iniScheluted);
    await _notification.initialize(
      settings,
      onSelectNotification: (payload) async {
        onNotification.add(payload);
        _selectNotification(
            selectRemind: selectRemind,
            selectTask: selectTask,
            payload: payload);
      },
    );
  }

  @override
  Future<void> showScheduledNotification({
    required Notice notice,
    required Time time,
    required DateTime day,
  }) async {
    final locationName = await FlutterNativeTimezone.getLocalTimezone();
    final location = tz.getLocation(locationName);

    final tzTime = tz.TZDateTime(
      location,
      day.year,
      day.month,
      day.day,
      time.hour,
      time.minute,
      time.second,
    );

    await _notification.zonedSchedule(
      notice.id,
      notice.title,
      notice.body,
      tzTime,
      _notificationDetails(),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
      payload: jsonEncode(
          NotificationPayload(id: notice.taskId, isRemind: notice.isRemind)
              .toJson()),
    );
  }

  NotificationDetails _notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'id',
        'name',
        channelDescription: 'description',
        importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }

  @override
  Future<void> showNotification(Notice notice) async => _notification.show(
        notice.id,
        notice.title,
        notice.body,
        _notificationDetails(),
      );

  @override
  Future<void> cancelById(int id) async {
    return await _notification.cancel(id);
  }

  void _selectNotification({
    required String? payload,
    required Function(int) selectRemind,
    required Function(int) selectTask,
  }) {
    if (payload != null) {
      final notificationPayload =
          NotificationPayload.fromJson(jsonDecode(payload));
      if (notificationPayload.isRemind) {
        selectRemind(notificationPayload.id);
      } else {
        selectTask(notificationPayload.id);
      }
    }
  }
}
