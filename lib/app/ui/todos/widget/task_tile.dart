import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
import 'package:to_do/core/data/model/task.dart';
import 'package:to_do/generated/l10n.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  const TaskTile({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: task.taskColor.color,
        ),
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: Theme.of(context)
                      .extension<CustomTextTheme>()!
                      .taskTileTitle1,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time_rounded,
                      color: Theme.of(context)
                          .extension<CustomColor>()!
                          .iconColor2,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "${task.startTime.format(context)} - ${task.endTime.format(context)}",
                      style: Theme.of(context)
                          .extension<CustomTextTheme>()!
                          .taskTileSubtitle2,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  task.note,
                  style: Theme.of(context)
                      .extension<CustomTextTheme>()!
                      .taskTileSubtitle1,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            width: 0.5,
            color: Theme.of(context).extension<CustomColor>()!.taskTileDivide1,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              task.isCompleted
                  ? S.of(context).completed.toUpperCase()
                  : S.of(context).todo.toUpperCase(),
              style: Theme.of(context)
                  .extension<CustomTextTheme>()!
                  .taskTileSubtitle3,
            ),
          ),
        ]),
      ),
    );
  }
}
