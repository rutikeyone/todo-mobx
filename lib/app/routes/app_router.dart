import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do/app/ui/todos/todos_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: [
    AutoRoute(
      initial: true,
      path: 'todo-screen',
      page: TodosScreen,
    )
  ],
)
class AppRouter extends _$AppRouter {}
