// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddTaskStore on AddTaskStoreBase, Store {
  late final _$titleAtom =
      Atom(name: 'AddTaskStoreBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$noteAtom = Atom(name: 'AddTaskStoreBase.note', context: context);

  @override
  String get note {
    _$noteAtom.reportRead();
    return super.note;
  }

  @override
  set note(String value) {
    _$noteAtom.reportWrite(value, super.note, () {
      super.note = value;
    });
  }

  late final _$dateAtom = Atom(name: 'AddTaskStoreBase.date', context: context);

  @override
  DateTime get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(DateTime value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$startTimeAtom =
      Atom(name: 'AddTaskStoreBase.startTime', context: context);

  @override
  TimeOfDay get startTime {
    _$startTimeAtom.reportRead();
    return super.startTime;
  }

  @override
  set startTime(TimeOfDay value) {
    _$startTimeAtom.reportWrite(value, super.startTime, () {
      super.startTime = value;
    });
  }

  late final _$endTimeAtom =
      Atom(name: 'AddTaskStoreBase.endTime', context: context);

  @override
  TimeOfDay get endTime {
    _$endTimeAtom.reportRead();
    return super.endTime;
  }

  @override
  set endTime(TimeOfDay value) {
    _$endTimeAtom.reportWrite(value, super.endTime, () {
      super.endTime = value;
    });
  }

  late final _$remindAtom =
      Atom(name: 'AddTaskStoreBase.remind', context: context);

  @override
  Remind get remind {
    _$remindAtom.reportRead();
    return super.remind;
  }

  @override
  set remind(Remind value) {
    _$remindAtom.reportWrite(value, super.remind, () {
      super.remind = value;
    });
  }

  late final _$changeDateAsyncAction =
      AsyncAction('AddTaskStoreBase.changeDate', context: context);

  @override
  Future<dynamic> changeDate(Future<DateTime?> date) {
    return _$changeDateAsyncAction.run(() => super.changeDate(date));
  }

  late final _$changeStartTimeAsyncAction =
      AsyncAction('AddTaskStoreBase.changeStartTime', context: context);

  @override
  Future<dynamic> changeStartTime(Future<TimeOfDay?> time) {
    return _$changeStartTimeAsyncAction.run(() => super.changeStartTime(time));
  }

  late final _$changeEndTimeAsyncAction =
      AsyncAction('AddTaskStoreBase.changeEndTime', context: context);

  @override
  Future<dynamic> changeEndTime(Future<TimeOfDay?> time) {
    return _$changeEndTimeAsyncAction.run(() => super.changeEndTime(time));
  }

  late final _$AddTaskStoreBaseActionController =
      ActionController(name: 'AddTaskStoreBase', context: context);

  @override
  void changeRemind(Remind remind) {
    final _$actionInfo = _$AddTaskStoreBaseActionController.startAction(
        name: 'AddTaskStoreBase.changeRemind');
    try {
      return super.changeRemind(remind);
    } finally {
      _$AddTaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTask() {
    final _$actionInfo = _$AddTaskStoreBaseActionController.startAction(
        name: 'AddTaskStoreBase.addTask');
    try {
      return super.addTask();
    } finally {
      _$AddTaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
note: ${note},
date: ${date},
startTime: ${startTime},
endTime: ${endTime},
remind: ${remind}
    ''';
  }
}
