import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

const themeBoxValue = 'theme_box';
const isDarkModeValue = 'is_dark_mode';

class ThemeStore = ThemeStoreBase with _$ThemeStore;

abstract class ThemeStoreBase with Store {
  late final Box themeBox;

  @observable
  ThemeMode? themeMode;

  @computed
  bool get isDarkMode => themeMode == ThemeMode.dark;

  @computed
  bool get isLightMode => themeMode == ThemeMode.light;

  ThemeStoreBase() {
    themeBox = Hive.box(themeBoxValue);
    final bool isDarkMode = themeBox.get(isDarkModeValue) ?? false;
    themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }

  @action
  void setTheme(ThemeMode mode) {
    final bool isDarkMode = mode == ThemeMode.dark;
    themeBox.put(isDarkModeValue, isDarkMode);
    themeMode = mode;
  }
}
