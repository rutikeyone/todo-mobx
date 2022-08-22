import 'dart:io';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class TodosDatePicker extends StatelessWidget {
  final void Function(DateTime) changeDateTime;

  const TodosDatePicker({
    Key? key,
    required this.changeDateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: DatePicker(
          DateTime.now(),
          locale: Platform.localeName,
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: Theme.of(context).primaryColor,
          selectedTextColor: Colors.white,
          onDateChange: changeDateTime,
          dateTextStyle:
              Theme.of(context).extension<CustomTextTheme>()!.heading2,
          dayTextStyle:
              Theme.of(context).extension<CustomTextTheme>()!.heading3,
          monthTextStyle:
              Theme.of(context).extension<CustomTextTheme>()!.heading4,
        ),
      ),
    );
  }
}
