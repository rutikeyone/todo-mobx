// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TodosScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TodosScreenRouteArgs>(
          orElse: () => const TodosScreenRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: TodosScreen(key: args.key));
    },
    AddTaskScreenRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const AddTaskScreen());
    },
    TaskNotificationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TaskNotificationScreenRouteArgs>();
      return CupertinoPageX<dynamic>(
          routeData: routeData,
          child: TaskNotificationScreen(key: args.key, task: args.task));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: 'todo-screen', fullMatch: true),
        RouteConfig(TodosScreenRoute.name, path: 'todo-screen'),
        RouteConfig(AddTaskScreenRoute.name, path: 'add-task-screen'),
        RouteConfig(TaskNotificationScreenRoute.name,
            path: 'task-notification-screen')
      ];
}

/// generated route for
/// [TodosScreen]
class TodosScreenRoute extends PageRouteInfo<TodosScreenRouteArgs> {
  TodosScreenRoute({Key? key})
      : super(TodosScreenRoute.name,
            path: 'todo-screen', args: TodosScreenRouteArgs(key: key));

  static const String name = 'TodosScreenRoute';
}

class TodosScreenRouteArgs {
  const TodosScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'TodosScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AddTaskScreen]
class AddTaskScreenRoute extends PageRouteInfo<void> {
  const AddTaskScreenRoute()
      : super(AddTaskScreenRoute.name, path: 'add-task-screen');

  static const String name = 'AddTaskScreenRoute';
}

/// generated route for
/// [TaskNotificationScreen]
class TaskNotificationScreenRoute
    extends PageRouteInfo<TaskNotificationScreenRouteArgs> {
  TaskNotificationScreenRoute({Key? key, required Task task})
      : super(TaskNotificationScreenRoute.name,
            path: 'task-notification-screen',
            args: TaskNotificationScreenRouteArgs(key: key, task: task));

  static const String name = 'TaskNotificationScreenRoute';
}

class TaskNotificationScreenRouteArgs {
  const TaskNotificationScreenRouteArgs({this.key, required this.task});

  final Key? key;

  final Task task;

  @override
  String toString() {
    return 'TaskNotificationScreenRouteArgs{key: $key, task: $task}';
  }
}
