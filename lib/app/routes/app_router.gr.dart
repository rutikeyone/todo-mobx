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
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const TodosScreen());
    },
    AddTaskScreenRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
          routeData: routeData, child: const AddTaskScreen());
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
class TodosScreenRoute extends PageRouteInfo<void> {
  const TodosScreenRoute() : super(TodosScreenRoute.name, path: 'todo-screen');

  static const String name = 'TodosScreenRoute';
}

/// generated route for
/// [AddTaskScreen]
class AddTaskScreenRoute extends PageRouteInfo<void> {
  const AddTaskScreenRoute()
      : super(AddTaskScreenRoute.name, path: 'add-task-screen');

  static const String name = 'AddTaskScreenRoute';
}
