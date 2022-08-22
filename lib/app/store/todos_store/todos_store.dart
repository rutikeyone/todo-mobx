import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:to_do/app/store/theme/theme_store.dart';

part 'todos_store.g.dart';

enum ThemeStatus { setLight, setDark }

class TodosStore = TodosStoreBase with _$TodosStore;

abstract class TodosStoreBase with Store {
  late final ThemeStore _themeStore;
  late final ObservableStream<ThemeStatus> themeStream;
  late final StreamController<ThemeStatus> _themeController;

  ThemeStore get theme => _themeStore;

  @observable
  DateTime _selectedDateTime;
  DateTime get selectedDateTime => _selectedDateTime;

  TodosStoreBase({required ThemeStore themeStore})
      : _selectedDateTime = DateTime.now() {
    _themeStore = themeStore;
    _themeController = BehaviorSubject();
    themeStream = ObservableStream(_themeController.stream);
    _selectedDateTime = DateTime.now();
  }

  void _setTheme(ThemeMode mode, ThemeStatus status) {
    _themeStore.setTheme(mode);
    _themeController.add(status);
  }

  @action
  Future toggleChangeTheme(BuildContext context) async {
    _themeStore.isLightMode
        ? _setTheme(ThemeMode.dark, ThemeStatus.setDark)
        : _setTheme(ThemeMode.light, ThemeStatus.setLight);
  }

  @action
  void changeSelectedDateTime(DateTime date) {
    _selectedDateTime = date;
  }

  void dispose() async {
    await themeStream.close();
    await _themeController.close();
  }
}
