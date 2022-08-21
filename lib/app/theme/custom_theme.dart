import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class CustomTheme {
  static CustomColor get light => CustomColor.lightColor;
  static CustomColor get dark => CustomColor.darkColor;

  static CustomTextTheme get lightTextStyle => CustomTextTheme.lightTextStyle;
  static CustomTextTheme get darkTextStyle => CustomTextTheme.darkTextStyle;

  static final darkTheme = ThemeData(
    extensions: [
      dark,
      darkTextStyle,
    ],
    primaryColor: dark.primary,
    brightness: Brightness.dark,
    backgroundColor: dark.darkHeader1,
  );

  static final lightTheme = ThemeData(
    extensions: [
      light,
      lightTextStyle,
    ],
    primaryColor: light.primary,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
  );
}
