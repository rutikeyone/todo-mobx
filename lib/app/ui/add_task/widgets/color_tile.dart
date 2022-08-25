import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/core/domain/entity/task_color.dart';

class ColorTile extends StatelessWidget {
  final TaskColor taskColor;
  final bool isSelected;
  final EdgeInsets? edgeInsets;
  final void Function(TaskColor)? onTap;

  const ColorTile({
    Key? key,
    required this.taskColor,
    required this.isSelected,
    required this.onTap,
    this.edgeInsets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () => onTap != null ? onTap!(taskColor) : null,
        child: Ink(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: taskColor.color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: isSelected
              ? Center(
                  child: Icon(
                    Icons.check,
                    color:
                        Theme.of(context).extension<CustomColor>()!.iconColor2,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
