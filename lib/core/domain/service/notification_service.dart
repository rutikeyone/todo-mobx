import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:to_do/core/domain/entity/notice.dart';

abstract class NotificationService {
  final onNotification = BehaviorSubject<String?>();

  Future init({bool inScheluted = false});

  Future<void> showScheduledNotification({
    required Notice notice,
    required Time time,
    required DateTime day,
  });

  Future<void> showNotification(Notice notice);

  Future<void> cancelById(int id);
}
