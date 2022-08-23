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
      final args = routeData.argsAs<AddTaskScreenRouteArgs>(
          orElse: () => const AddTaskScreenRouteArgs());
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: AddTaskScreen(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: 'todo-screen', fullMatch: true),
        RouteConfig(TodosScreenRoute.name, path: 'todo-screen'),
        RouteConfig(AddTaskScreenRoute.name, path: 'add-task-screen')
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
class AddTaskScreenRoute extends PageRouteInfo<AddTaskScreenRouteArgs> {
  AddTaskScreenRoute({Key? key})
      : super(AddTaskScreenRoute.name,
            path: 'add-task-screen', args: AddTaskScreenRouteArgs(key: key));

  static const String name = 'AddTaskScreenRoute';
}

class AddTaskScreenRouteArgs {
  const AddTaskScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddTaskScreenRouteArgs{key: $key}';
  }
}
