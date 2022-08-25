// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/app/store/add_task_store/add_task_store.dart';
import 'package:to_do/core/domain/entity/remind.dart';
import 'package:to_do/core/domain/entity/repeat.dart';
import 'package:to_do/core/domain/entity/task_color.dart';

part 'task.freezed.dart';
part 'task.g.dart';

const hour = 'hour';
const minute = 'minute';

@freezed
class Task with _$Task {
  factory Task({
    final int? id,
    required final String title,
    required final String note,
    required final bool isCompleted,
    @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
        required final DateTime date,
    @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
        required final TimeOfDay startTime,
    @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
        required final TimeOfDay endTime,
    required final TaskColor taskColor,
    required final Remind remind,
    required final Repeat repeat,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  static Task fromAddTaskStore(AddTaskStoreBase addTaskStore,
          [bool isCompleted = false]) =>
      _Task(
          title: addTaskStore.title,
          note: addTaskStore.note,
          isCompleted: isCompleted,
          date: addTaskStore.date,
          startTime: addTaskStore.startTime,
          endTime: addTaskStore.endTime,
          taskColor: addTaskStore.color,
          remind: addTaskStore.remind,
          repeat: addTaskStore.repeat);
}

String dateToJson(DateTime date) => date.toIso8601String();

DateTime jsonToDate(dynamic json) => DateTime.parse(json);

String timeOfDayToJson(TimeOfDay time) =>
    jsonEncode({hour: time.hour, minute: time.minute});

TimeOfDay jsonToTimeOfDay(dynamic json) {
  final data = jsonDecode(json);
  return TimeOfDay(hour: data[hour], minute: data[minute]);
}
