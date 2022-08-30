import 'package:to_do/core/data/service/notification_service_impl.dart';
import 'package:to_do/core/di/service_creater.dart';
import 'package:to_do/core/domain/service/notification_service.dart';

class ServiceCreaterImpl extends ServiceCreater {
  @override
  NotificationService makeNotificationService() => NotificationServiceImpl();
}
