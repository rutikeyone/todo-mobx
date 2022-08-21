import 'package:get_it/get_it.dart';
import 'package:to_do/app/store/theme/theme_store.dart';

final GetIt locator = GetIt.instance;

Future<void> setup() async {
  locator.registerSingleton<ThemeStore>(ThemeStore());
}
