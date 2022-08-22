import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class TextInputFieldTypeOne extends StatelessWidget {
  final String title;
  final String hint;
  final double? topPadding;
  final TextEditingController? controller;

  const TextInputFieldTypeOne({
    Key? key,
    required this.title,
    required this.hint,
    this.controller,
    this.topPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).extension<CustomTextTheme>()!.heading3,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      const BorderSide(width: 3, color: Colors.greenAccent),
                ),
              ),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
