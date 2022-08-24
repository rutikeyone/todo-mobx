import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_color.freezed.dart';

@freezed
class TaskColor with _$TaskColor {
  static TaskColor get blue => const TaskColor(Colors.blue);
  static TaskColor get red => const TaskColor(Colors.red);
  static TaskColor get yellow => const TaskColor(Colors.yellow);

  const factory TaskColor(Color color) = $TaskDefaultColor;
}
