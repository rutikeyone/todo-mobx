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
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TodosScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: 'todo-screen', fullMatch: true),
        RouteConfig(TodosScreenRoute.name, path: 'todo-screen')
      ];
}

/// generated route for
/// [TodosScreen]
class TodosScreenRoute extends PageRouteInfo<void> {
  const TodosScreenRoute() : super(TodosScreenRoute.name, path: 'todo-screen');

  static const String name = 'TodosScreenRoute';
}
