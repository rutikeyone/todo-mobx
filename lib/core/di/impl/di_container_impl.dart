import 'package:flutter/cupertino.dart';
import 'package:to_do/app/routes/app_router.dart';
import 'package:to_do/core/di/di_container.dart';
import 'package:to_do/core/di/my_app_args.dart';
import 'package:to_do/my_app.dart';

DIContainer makeDIContainer() => DIContainerImpl();

class DIContainerImpl extends DIContainer {
  @override
  AppRouter makeAppRouter() => AppRouter();

  @override
  Widget makeApp() => MyApp(
        args: MyAppArgs(
          appRouter: makeAppRouter(),
        ),
      );
}
