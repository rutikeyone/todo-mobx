// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:to_do/core/domain/entity/notice.dart';
import 'package:to_do/core/domain/entity/notification_payload.dart';
import 'package:to_do/core/domain/service/notification_service.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest.dart' as tl;
import 'package:timezone/timezone.dart' as tz;

class NotificationServiceImpl extends NotificationService {
  final _notification = FlutterLocalNotificationsPlugin();

  @override
  Future init({bool inScheluted = false}) async {
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
    if (inScheluted) {
      final locationName = await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(locationName));
    }

    await _notification.initialize(
      settings,
      onSelectNotification: (payload) async {
        onNotification.add(payload);
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
}
