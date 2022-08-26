// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodosStore on TodosStoreBase, Store {
  Computed<List<Task>>? _$tasksComputed;

  @override
  List<Task> get tasks => (_$tasksComputed ??=
          Computed<List<Task>>(() => super.tasks, name: 'TodosStoreBase.tasks'))
      .value;

  late final _$_selectedDateTimeAtom =
      Atom(name: 'TodosStoreBase._selectedDateTime', context: context);

  @override
  DateTime get _selectedDateTime {
    _$_selectedDateTimeAtom.reportRead();
    return super._selectedDateTime;
  }

  @override
  set _selectedDateTime(DateTime value) {
    _$_selectedDateTimeAtom.reportWrite(value, super._selectedDateTime, () {
      super._selectedDateTime = value;
    });
  }

  late final _$toggleChangeThemeAsyncAction =
      AsyncAction('TodosStoreBase.toggleChangeTheme', context: context);

  @override
  Future<dynamic> toggleChangeTheme(BuildContext context) {
    return _$toggleChangeThemeAsyncAction
        .run(() => super.toggleChangeTheme(context));
  }

  late final _$removeTaskAsyncAction =
      AsyncAction('TodosStoreBase.removeTask', context: context);

  @override
  Future<dynamic> removeTask(Task task) {
    return _$removeTaskAsyncAction.run(() => super.removeTask(task));
  }

  late final _$competeTaskAsyncAction =
      AsyncAction('TodosStoreBase.competeTask', context: context);

  @override
  Future<dynamic> competeTask(Task task) {
    return _$competeTaskAsyncAction.run(() => super.competeTask(task));
  }

  late final _$TodosStoreBaseActionController =
      ActionController(name: 'TodosStoreBase', context: context);

  @override
  void changeSelectedDateTime(DateTime date) {
    final _$actionInfo = _$TodosStoreBaseActionController.startAction(
        name: 'TodosStoreBase.changeSelectedDateTime');
    try {
      return super.changeSelectedDateTime(date);
    } finally {
      _$TodosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks}
    ''';
  }
}
