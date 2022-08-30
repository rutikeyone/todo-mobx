import 'package:flutter/material.dart';
import 'package:to_do/app/ui/task_notification/task_notification_page.dart';
import 'package:to_do/core/data/model/task.dart';

class TaskNotificationScreen extends StatelessWidget {
  final Task task;
  const TaskNotificationScreen({Key? key, required this.task})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TaskNotificationPage();
  }
}
