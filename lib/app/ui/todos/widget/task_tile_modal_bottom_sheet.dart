import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do/app/ui/todos/widget/modal_bottom_sheet_buttom_type_one.dart';
import 'package:to_do/app/ui/todos/widget/modal_bottom_sheet_buttom_type_two.dart';
import 'package:to_do/core/domain/entity/task_color.dart';
import 'package:to_do/generated/l10n.dart';

class TaskTileModalBottomSheet extends StatelessWidget {
  final VoidCallback deleteTask;
  final VoidCallback completeTask;
  final bool visibilityCompleteButton;

  const TaskTileModalBottomSheet({
    Key? key,
    required this.visibilityCompleteButton,
    required this.deleteTask,
    required this.completeTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        children: [
          visibilityCompleteButton
              ? Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: ModalBottomSheetButtonTypeOne(
                    label: S.of(context).task_completed,
                    backgroundColor: TaskColor.blue.color,
                    onTap: () {
                      context.router.pop();
                      completeTask();
                    },
                  ),
                )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ModalBottomSheetButtonTypeOne(
              label: S.of(context).delete,
              backgroundColor: TaskColor.red.color,
              onTap: () {
                context.router.pop();
                deleteTask();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 18),
            child: ModalBottomSheetButtonTypeTwo(
              label: S.of(context).back,
              onTap: () => context.router.pop(),
            ),
          ),
        ],
      ),
    );
  }
}
