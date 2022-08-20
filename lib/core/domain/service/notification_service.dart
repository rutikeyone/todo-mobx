import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:to_do/core/data/model/notice.dart';

abstract class NotificationService {
  Future init({bool iniScheluted = false});

  Future<void> showScheduledNotification({
    required Notice notice,
    required Time time,
    required DateTime day,
  });

  Future<void> showNotification(Notice notice);

  Future<void> cancelById(int id);
}
