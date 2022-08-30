import 'package:to_do/core/domain/service/notification_service.dart';

abstract class ServiceCreater {
  NotificationService makeNotificationService();
}
