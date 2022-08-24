import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class TextInputFieldTypeOne extends StatelessWidget {
  final String title;
  final String? error;
  final void Function(String) onChanged;
  final String? hint;
  final double? topPadding;

  bool get hasError => error != null;

  const TextInputFieldTypeOne({
    Key? key,
    required this.title,
    required this.onChanged,
    this.error,
    this.hint,
    this.topPadding,
  }) : super(key: key);

  InputBorder getOutlineInputBorder(BuildContext context) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Theme.of(context).extension<CustomColor>()!.textFieldBorder1,
        ),
      );

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
              onChanged: onChanged,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelStyle:
                    Theme.of(context).extension<CustomTextTheme>()!.labelStyle1,
                hintStyle:
                    Theme.of(context).extension<CustomTextTheme>()!.hintStyle1,
                hintText: hint,
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                enabledBorder: getOutlineInputBorder(context),
                focusedBorder: getOutlineInputBorder(context),
              ),
            ),
          ),
          SizedBox(
            height: hasError ? 30 : 0,
            child: AnimatedOpacity(
              opacity: hasError ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    error ?? '',
                    style: Theme.of(context)
                        .extension<CustomTextTheme>()!
                        .errorStyle1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
