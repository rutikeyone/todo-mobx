import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/core/data/model/task.dart';

part 'my_app_notification_action.freezed.dart';

@freezed
class MyAppNotificationAction with _$MyAppNotificationAction {
  const factory MyAppNotificationAction.navigateToTaskNotification(Task task) =
      MyAppNavigateToTaskNotification;
}
