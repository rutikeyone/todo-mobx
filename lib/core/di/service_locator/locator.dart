import 'package:get_it/get_it.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:hive_flutter/hive_flutter.dart';

final GetIt locator = GetIt.instance;

Future<void> setup() async {
  await _initHive();
  locator.registerSingleton<ThemeStore>(ThemeStore());
}

Future _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox(themeBoxValue);
}
