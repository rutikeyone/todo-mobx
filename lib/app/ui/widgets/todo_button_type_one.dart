import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class ToDoButtonTypeOne extends StatelessWidget {
  final double? height;
  final String label;
  final VoidCallback onPressed;

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
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                label,
                style: Theme.of(context)
                    .extension<CustomTextTheme>()!
                    .buttonTextStyle1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
