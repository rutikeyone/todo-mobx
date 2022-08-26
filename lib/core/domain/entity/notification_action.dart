import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/core/data/model/task.dart';

part 'notification_action.freezed.dart';

@freezed
class NotificationAction with _$NotificationAction {
  const factory NotificationAction.addRemindScheduledNotification(Task task) =
      AddRemindScheduledNotification;
  const factory NotificationAction.addScheduledNotification(Task task) =
      AddScheduledNotification;
}
