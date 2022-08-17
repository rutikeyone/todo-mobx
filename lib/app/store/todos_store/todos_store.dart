import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';

part 'todos_store.g.dart';

enum ThemeStatus { setLight, setDark }

class TodosStore = TodosStoreBase with _$TodosStore;

abstract class TodosStoreBase with Store {
  late final ObservableStream<ThemeStatus> themeStream;
  late final StreamController<ThemeStatus> _themeController;

  TodosStoreBase() {
    _themeController = BehaviorSubject();
    themeStream = ObservableStream(_themeController.stream);
  }

  @action
  Future toggleChangeTheme(BuildContext context) async {
    final mode = await AdaptiveTheme.getThemeMode();
    mode == AdaptiveThemeMode.light
        ? _themeController.add(ThemeStatus.setDark)
        : _themeController.add(ThemeStatus.setLight);
  }

  void dispose() async {
    await themeStream.close();
    await _themeController.close();
  }
}
