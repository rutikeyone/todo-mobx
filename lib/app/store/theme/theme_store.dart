import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = ThemeStoreBase with _$ThemeStore;

abstract class ThemeStoreBase with Store {
  @observable
  ThemeMode themeMode = ThemeMode.light;

  @computed
  bool get isDarkMode => themeMode == ThemeMode.dark;

  @computed
  bool get isLightMode => themeMode == ThemeMode.light;

  @action
  void setTheme(ThemeMode mode) {
    themeMode = mode;
  }
}
