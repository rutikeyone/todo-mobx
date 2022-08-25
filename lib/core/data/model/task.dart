// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/app/store/add_task_store/add_task_store.dart';
import 'package:to_do/core/domain/entity/remind.dart';
import 'package:to_do/core/domain/entity/repeat.dart';
import 'package:to_do/core/domain/entity/task_color.dart';
import 'package:to_do/core/utils/custom_serializer.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    final int? id,
    required final String title,
    required final String note,
    required final bool isCompleted,
    @JsonKey(toJson: CustomSerializer.dateToJson, fromJson: CustomSerializer.jsonToDate)
        required final DateTime date,
    @JsonKey(toJson: CustomSerializer.timeOfDayToJson, fromJson: CustomSerializer.jsonToTimeOfDay)
        required final TimeOfDay startTime,
    @JsonKey(toJson: CustomSerializer.timeOfDayToJson, fromJson: CustomSerializer.jsonToTimeOfDay)
        required final TimeOfDay endTime,
    @JsonKey(toJson: CustomSerializer.taskColorToJson, fromJson: CustomSerializer.jsonToTaskColor)
        required final TaskColor taskColor,
    @JsonKey(toJson: CustomSerializer.remindToJson, fromJson: CustomSerializer.jsonToRemind)
        required final Remind remind,
    @JsonKey(toJson: CustomSerializer.repeatToJson, fromJson: CustomSerializer.jsonToRepeat)
        required final Repeat repeat,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  static Task fromAddTaskStore(AddTaskStoreBase addTaskStore,
          [bool isCompleted = false]) =>
      Task(
        title: addTaskStore.title,
        note: addTaskStore.note,
        isCompleted: isCompleted,
        date: addTaskStore.date,
        startTime: addTaskStore.startTime,
        endTime: addTaskStore.endTime,
        taskColor: addTaskStore.color,
        remind: addTaskStore.remind,
        repeat: addTaskStore.repeat,
      );
}
