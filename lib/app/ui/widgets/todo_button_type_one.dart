import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class ToDoButtonTypeOne extends StatelessWidget {
  final double? height;
  final String label;
  final void Function()? onPressed;

  const ToDoButtonTypeOne({
    Key? key,
    this.height,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          decoration: BoxDecoration(
            color: onPressed != null
                ? Theme.of(context).primaryColor
                : Theme.of(context).disabledColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                label,
                style: Theme.of(context).extension<CustomTextTheme>()!.button1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
