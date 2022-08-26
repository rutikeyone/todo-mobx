import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/add_task_store/add_task_store.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/ui/add_task/add_task_page.dart';
import 'package:to_do/core/di/service_locator/locator.dart';
import 'package:to_do/core/domain/service/notification_service.dart';

class AddTaskScreen extends StatelessWidget {
  final AddTaskStore _addTaskStore;
  AddTaskScreen({Key? key})
      : _addTaskStore = AddTaskStore(
          locator.get<TaskStore>(),
          locator.get<NotificationService>(),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _addTaskStore,
      child: AddTaskPage(store: _addTaskStore),
    );
  }
}
