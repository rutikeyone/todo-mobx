import 'package:get_it/get_it.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/core/di/di_container.dart';
import 'package:to_do/core/domain/service/db_service.dart';

final GetIt locator = GetIt.instance;

Future<void> setup(DIContainer diContainer) async {
  await _initHive();
  locator.registerSingleton<DbService>(diContainer.makeDbService());
  locator.registerSingleton<ThemeStore>(diContainer.makeThemeStore());
  await _initTaskStore(diContainer);
}

Future _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox(themeBoxValue);
}

Future _initTaskStore(DIContainer diContainer) async {
  locator.registerSingleton<TaskStore>(
      diContainer.makeTaskStore(locator.get<DbService>()));
  await locator.get<TaskStore>().initTasks();
}
