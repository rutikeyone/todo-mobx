import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';

class CustomTheme {
  static CustomColor get light => CustomColor.lightColor;
  static CustomColor get dark => CustomColor.darkColor;

  static final darkTheme = ThemeData(
    extensions: [
      dark,
    ],
    primaryColor: dark.primary,
    brightness: Brightness.dark,
    backgroundColor: dark.darkHeader1,
  );

  static final lightTheme = ThemeData(
    extensions: [
      light,
    ],
    primaryColor: light.primary,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
  );
}
