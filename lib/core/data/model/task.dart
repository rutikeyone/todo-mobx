// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/core/domain/entity/remind.dart';
import 'package:to_do/core/domain/entity/repeat.dart';
import 'package:to_do/core/domain/entity/task_color.dart';

part 'task.freezed.dart';

const hour = 'hour';
const minute = 'minute';

@freezed
class Task with _$Task {
  factory Task({
    required final int id,
    required final String title,
    required final String note,
    required final bool isCompleted,
    @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
        required final DateTime date,
    @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
        required final TimeOfDay startDate,
    @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
        required final TimeOfDay endDate,
    required final TaskColor taskColor,
    required final Remind remind,
    required final Repeat repeat,
  }) = _Task;
}

String dateToJson(DateTime date) => date.toIso8601String();

DateTime jsonToDate(dynamic json) => DateTime.parse(json);

String timeOfDayToJson(TimeOfDay time) =>
    jsonEncode({hour: time.hour, minute: time.minute});

TimeOfDay jsonToTimeOfDay(dynamic json) =>
    TimeOfDay(hour: json[hour] as int, minute: json[minute] as int);
