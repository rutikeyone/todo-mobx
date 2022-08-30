import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do/app/ui/add_task/add_task_screen.dart';
import 'package:to_do/app/ui/task_notification/task_notification_screen.dart';
import 'package:to_do/app/ui/todos/todos_screen.dart';
import 'package:to_do/core/data/model/task.dart';

part 'app_router.gr.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: [
    AutoRoute(
      initial: true,
      path: 'todo-screen',
      page: TodosScreen,
    ),
    AutoRoute(
      path: 'add-task-screen',
      page: AddTaskScreen,
    ),
    AutoRoute(
      path: 'task-notification-screen',
      page: TaskNotificationScreen,
    )
  ],
)
class AppRouter extends _$AppRouter {}
