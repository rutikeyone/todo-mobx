import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:to_do/core/domain/entity/remind.dart';
import 'package:to_do/core/domain/entity/repeat.dart';
import 'package:to_do/core/domain/entity/task_color.dart';

const colorValue = 'color';
const hourValue = 'hour';
const minuteValue = 'minute';

class CustomSerializer {
  static String repeatToJson(Repeat repeat) => jsonEncode(repeat.toJson());

  static Repeat jsonToRepeat(dynamic json) => Repeat.fromJson(jsonDecode(json));

  static String remindToJson(Remind remind) => jsonEncode(remind.toJson());

  static Remind jsonToRemind(dynamic json) => Remind.fromJson(jsonDecode(json));

  static String colorToJson(Color color) => color.value.toString();

  static Color jsonToColor(dynamic json) => Color(int.parse(json));

  static String taskColorToJson(TaskColor color) {
    return jsonEncode({colorValue: colorToJson(color.color)});
  }

  static TaskColor jsonToTaskColor(dynamic json) {
    final data = jsonDecode(json);
    return TaskColor(jsonToColor(data[colorValue]));
  }

  static String dateToJson(DateTime date) => date.toIso8601String();

  static DateTime jsonToDate(dynamic json) => DateTime.parse(json);

  static String timeOfDayToJson(TimeOfDay time) =>
      jsonEncode({hourValue: time.hour, minuteValue: time.minute});

  static TimeOfDay jsonToTimeOfDay(dynamic json) {
    final data = jsonDecode(json);
    return TimeOfDay(hour: data[hourValue], minute: data[minuteValue]);
  }
}
