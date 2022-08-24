import 'package:flutter/material.dart';
import 'package:to_do/core/domain/entity/end_date_error.dart';
import 'package:to_do/core/domain/entity/form_error.dart';
import 'package:to_do/core/domain/entity/remind.dart';
import 'package:to_do/core/domain/entity/repeat.dart';
import 'package:to_do/core/domain/entity/start_date_error.dart';
import 'package:to_do/core/domain/entity/task_color.dart';
import 'package:to_do/generated/l10n.dart';

class AddTaskUtils {
  List<Remind> get remindItems => const [
        Remind.fiveMinutesEarly(),
        Remind.tenMinutesEarly(),
        Remind.fifteenMinutesEarly(),
        Remind.twentyMinutesEarly(),
      ];

  List<Repeat> get repeatItems => const [
        Repeat.none(),
        Repeat.daily(),
        Repeat.weekly(),
        Repeat.monthly(),
      ];

  List<TaskColor> get colors => [
        TaskColor.blue,
        TaskColor.red,
        TaskColor.yellow,
      ];

  String? validateTextField(FormError? error, BuildContext context) {
    if (error != null) {
      return error.when(
        nullOrEmpty: () => S.of(context).empty_text_field,
        invalid: () => S.of(context).invalid_value,
      );
    }
    return null;
  }

  String? validateStartDate(StartDateError? error, BuildContext context) {
    if (error != null) {
      return error.when(
          isAfter: () => S.of(context).start_time_is_after_end_time);
    }
    return null;
  }

  String? validateEndDate(EndDateError? error, BuildContext context) {
    if (error != null) {
      return error.when(
          isBetween: () => S.of(context).end_time_is_between_start_time);
    }
    return null;
  }

  String parseRemind(Remind remind, BuildContext context) {
    return remind.when(
      fiveMinutesEarly: () => S.of(context).five_minutes_early,
      tenMinutesEarly: () => S.of(context).ten_minutes_early,
      fifteenMinutesEarly: () => S.of(context).fifteen_minutes_early,
      twentyMinutesEarly: () => S.of(context).twenty_minutes_early,
    );
  }

  String parseRepeat(Repeat repeat, BuildContext context) {
    return repeat.when(
      none: () => S.of(context).none,
      daily: () => S.of(context).daily,
      weekly: () => S.of(context).weekly,
      monthly: () => S.of(context).monthly,
    );
  }
}
