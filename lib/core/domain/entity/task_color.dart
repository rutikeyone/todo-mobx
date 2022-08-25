// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_color.freezed.dart';
part 'task_color.g.dart';

@freezed
class TaskColor with _$TaskColor {
  static TaskColor get blue => const TaskColor(Colors.blue);
  static TaskColor get red => const TaskColor(Colors.red);
  static TaskColor get yellow => const TaskColor(Colors.yellow);

  const factory TaskColor(
          @JsonKey(toJson: colorToJson, fromJson: jsonToColor) Color color) =
      $TaskDefaultColor;

  factory TaskColor.fromJson(Map<String, dynamic> json) =>
      _$TaskColorFromJson(json);
}

String colorToJson(Color color) => color.value.toString();

Color jsonToColor(dynamic json) => Color(int.parse(json));
