import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
import 'package:to_do/app/ui/widgets/todo_button_type_one.dart';
import 'package:to_do/generated/l10n.dart';

class AddTaskTile extends StatelessWidget {
  final VoidCallback addTaskOnPressed;
  const AddTaskTile({
    Key? key,
    required this.addTaskOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMEd().format(DateTime.now()),
              style:
              Theme.of(context).extension<CustomTextTheme>()!.subHeading1,
            ),
            Text(
              S.of(context).today,
              style: Theme.of(context).extension<CustomTextTheme>()!.heading1,
            ),
          ],
        ),
        ToDoButtonTypeOne(
          label: S.of(context).add_task,
          onPressed: addTaskOnPressed,
        ),
      ],
    );
  }
}