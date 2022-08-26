import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class ModalBottomSheetButtonTypeTwo extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ModalBottomSheetButtonTypeTwo({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey[500]!),
        ),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: Text(
            label,
            style: Theme.of(context)
                .extension<CustomTextTheme>()!
                .modalBottomSheetButton2,
          ),
        ),
      ),
    );
  }
}
