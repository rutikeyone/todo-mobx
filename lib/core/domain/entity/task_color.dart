// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do/core/utils/custom_serializer.dart';

part 'task_color.freezed.dart';
part 'task_color.g.dart';

@freezed
class TaskColor with _$TaskColor {
  static TaskColor get blue => const TaskColor(Colors.blue);
  static TaskColor get red => const TaskColor(Colors.red);
  static TaskColor get yellow => const TaskColor(Colors.yellow);

  const factory TaskColor(
      @JsonKey(toJson: CustomSerializer.colorToJson, fromJson: CustomSerializer.jsonToColor)
          Color color) = $TaskDefaultColor;

  factory TaskColor.fromJson(Map<String, dynamic> json) =>
      _$TaskColorFromJson(json);
}
