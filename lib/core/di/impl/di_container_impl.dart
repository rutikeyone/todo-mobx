import 'package:flutter/cupertino.dart';
import 'package:to_do/app/routes/app_router.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:to_do/core/data/db/impl/task_db_impl.dart';
import 'package:to_do/core/data/db/task_db.dart';
import 'package:to_do/core/data/service/db_repository_impl.dart';
import 'package:to_do/core/di/di_container.dart';
import 'package:to_do/core/di/impl/service_creater_impl.dart';
import 'package:to_do/core/di/my_app_args.dart';
import 'package:to_do/core/di/service_creater.dart';
import 'package:to_do/core/domain/service/db_service.dart';
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

  @override
  DbService makeDbService() => DbServiceImpl(makeTaskDb());

  @override
  TaskDatabase makeTaskDb() => TaskDatabaseImpl.instance;

  @override
  ThemeStore makeThemeStore() => ThemeStore();

  @override
  TaskStore makeTaskStore(DbService dbService) => TaskStore(dbService);

  @override
  ServiceCreater makeServiceCreater() => ServiceCreaterImpl();
}
