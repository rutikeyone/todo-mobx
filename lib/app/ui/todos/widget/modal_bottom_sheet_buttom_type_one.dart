import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class ModalBottomSheetButtonTypeOne extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final VoidCallback onTap;

  const ModalBottomSheetButtonTypeOne({
    Key? key,
    required this.label,
    required this.onTap,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: Text(
            label,
            style: Theme.of(context)
                .extension<CustomTextTheme>()!
                .modalBottomSheetButton1,
          ),
        ),
      ),
    );
  }
}
