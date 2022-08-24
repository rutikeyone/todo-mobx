import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class InfoPicker extends StatelessWidget {
  final String title;
  final String value;
  final Widget? icon;
  final double? topPadding;
  final double? width;
  final String? error;
  final VoidCallback onTap;

  bool get hasError => error != null;

  const InfoPicker({
    Key? key,
    required this.title,
    required this.value,
    required this.onTap,
    this.icon,
    this.width,
    this.topPadding,
    this.error,
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
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 50,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Theme.of(context)
                        .extension<CustomColor>()!
                        .textFieldBorder1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        value,
                        style: Theme.of(context)
                            .extension<CustomTextTheme>()!
                            .hintStyle1,
                      ),
                      icon ?? const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: hasError ? 50 : 0,
            child: AnimatedOpacity(
              opacity: hasError ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      error ?? '',
                      style: Theme.of(context)
                          .extension<CustomTextTheme>()!
                          .errorStyle1,
                      maxLines: 2,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
