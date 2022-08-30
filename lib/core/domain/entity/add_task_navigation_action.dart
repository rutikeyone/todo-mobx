import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/core/data/model/task.dart';

part 'add_task_navigation_action.freezed.dart';

@freezed
class AddTaskNavigationAction with _$AddTaskNavigationAction {
  const factory AddTaskNavigationAction.navigateToTaskNotification(Task task) =
      AddTaskNavigateToTaskNotification;
}
