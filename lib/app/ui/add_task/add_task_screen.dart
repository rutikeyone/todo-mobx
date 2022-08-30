import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/add_task_store/add_task_store.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/ui/add_task/add_task_page.dart';
import 'package:to_do/core/di/service_creater.dart';
import 'package:to_do/core/di/service_locator/locator.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late final AddTaskStore _addTaskStore;

  @override
  void initState() {
    _addTaskStore = AddTaskStore(
      locator.get<TaskStore>(),
      locator.get<ServiceCreater>().makeNotificationService()
        ..initWithRemind(
          (id) {},
          (id) {},
        ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _addTaskStore,
      child: AddTaskPage(store: _addTaskStore),
    );
  }
}
