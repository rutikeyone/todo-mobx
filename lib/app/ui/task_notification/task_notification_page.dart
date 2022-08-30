import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
import 'package:to_do/core/data/model/task.dart';

class TaskNotificationPage extends StatelessWidget {
  final Task task;
  const TaskNotificationPage({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: context.router.canNavigateBack
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color:
                        Theme.of(context).extension<CustomColor>()!.iconColor1,
                  ),
                  onPressed: () => context.router.pop(),
                )
              : const SizedBox.shrink(),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMEd().format(task.date),
                style: Theme.of(context).extension<CustomTextTheme>()!.heading1,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: task.taskColor.color,
                  ),
                  child: Row(
                    children: [
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
