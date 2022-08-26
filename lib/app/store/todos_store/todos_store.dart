import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:to_do/core/data/model/task.dart';

part 'todos_store.g.dart';

enum ThemeStatus { setLight, setDark }

class TodosStore = TodosStoreBase with _$TodosStore;

abstract class TodosStoreBase with Store {
  final TaskStore _taskStore;

  late final ThemeStore _themeStore;
  ThemeStore get theme => _themeStore;

  late final ObservableStream<ThemeStatus> themeStream;
  late final StreamController<ThemeStatus> _themeController;

  @observable
  DateTime _selectedDateTime;
  DateTime get selectedDateTime => _selectedDateTime;

  @computed
  List<Task> get tasks => _taskStore.tasks
      .where((element) =>
          element.date.day == _selectedDateTime.day &&
          element.date.month == _selectedDateTime.month &&
          element.date.year == _selectedDateTime.year)
      .toList();

  TodosStoreBase(this._themeStore, this._taskStore)
      : _selectedDateTime = DateTime.now() {
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

  @action
  Future removeTask(Task task) async {
    await _taskStore.remove(task.id!);
  }

  @action
  Future competeTask(Task task) async {
    final completedTask = task.copyWith(isCompleted: true);
    await _taskStore.update(completedTask);
  }

  void dispose() async {
    await themeStream.close();
    await _themeController.close();
  }
}
