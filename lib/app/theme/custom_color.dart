import 'package:flutter/material.dart';

class CustomColor extends ThemeExtension<CustomColor> {
  final Color primary;
  final Color yellow1;
  final Color pink1;
  final Color white1;
  final Color textFieldBorder1;
  final Color dialogSelectedItem1;

  final Color darkHeader1;

  final Color iconColor1;

  const CustomColor({
    required this.primary,
    required this.yellow1,
    required this.pink1,
    required this.white1,
    required this.textFieldBorder1,
    required this.dialogSelectedItem1,
    required this.iconColor1,
    required this.darkHeader1,
  });

  static final lightColor = CustomColor(
    primary: const Color(0xFF4e5ae8),
    yellow1: const Color(0xFFFFB746),
    pink1: const Color(0xFFFF4667),
    white1: const Color(0xFFFFFFFF),
    textFieldBorder1: Colors.grey,
    dialogSelectedItem1: Colors.grey[200]!,
    iconColor1: Colors.black,
    darkHeader1: const Color(0xFF424242),
  );

  static final darkColor = CustomColor(
    primary: const Color(0xFF4e5ae8),
    yellow1: const Color(0xFFFFB746),
    pink1: const Color(0xFFFF4667),
    white1: const Color(0xFFFFFFFF),
    textFieldBorder1: Colors.white,
    dialogSelectedItem1: Colors.grey[700]!,
    iconColor1: Colors.white,
    darkHeader1: const Color(0xFF424242),
  );

  @override
  CustomColor lerp(ThemeExtension<CustomColor>? other, double t) {
    if (other is! CustomColor) {
      return this;
    }

    return CustomColor(
      primary: Color.lerp(primary, other.primary, t)!,
      yellow1: Color.lerp(yellow1, other.yellow1, t)!,
      pink1: Color.lerp(pink1, other.pink1, t)!,
      white1: Color.lerp(white1, other.white1, t)!,
      textFieldBorder1:
          Color.lerp(textFieldBorder1, other.textFieldBorder1, t)!,
      dialogSelectedItem1:
          Color.lerp(dialogSelectedItem1, other.dialogSelectedItem1, t)!,
      iconColor1: Color.lerp(iconColor1, other.iconColor1, t)!,
      darkHeader1: Color.lerp(darkHeader1, other.darkHeader1, t)!,
    );
  }

  @override
  CustomColor copyWith({
    Color? primary,
    Color? yellow1,
    Color? pink1,
    Color? white1,
    Color? darkGrey1,
    Color? textFieldBorder1,
    Color? dialogSelectedItem1,
    Color? iconColor1,
    Color? darkHeader1,
  }) {
    return CustomColor(
      primary: primary ?? this.primary,
      yellow1: yellow1 ?? this.yellow1,
      pink1: pink1 ?? this.pink1,
      white1: white1 ?? this.white1,
      textFieldBorder1: textFieldBorder1 ?? this.textFieldBorder1,
      dialogSelectedItem1: dialogSelectedItem1 ?? this.dialogSelectedItem1,
      iconColor1: iconColor1 ?? this.iconColor1,
      darkHeader1: darkHeader1 ?? this.darkHeader1,
    );
  }
}
