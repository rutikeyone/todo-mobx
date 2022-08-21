import 'package:flutter/material.dart';

class CustomColor extends ThemeExtension<CustomColor> {
  final Color primary;
  final Color yellow1;
  final Color pink1;
  final Color white1;

  final Color darkHeader1;

  final Color iconColor1;

  const CustomColor({
    required this.primary,
    required this.yellow1,
    required this.pink1,
    required this.white1,
    required this.iconColor1,
    required this.darkHeader1,
  });

  static const lightColor = CustomColor(
    primary: Color(0xFF4e5ae8),
    yellow1: Color(0xFFFFB746),
    pink1: Color(0xFFFF4667),
    white1: Color(0xFFFFFFFF),
    iconColor1: Colors.black,
    darkHeader1: Color(0xFF424242),
  );

  static const darkColor = CustomColor(
    primary: Color(0xFF121212),
    yellow1: Color(0xFFFFB746),
    pink1: Color(0xFFFF4667),
    white1: Color(0xFFFFFFFF),
    iconColor1: Colors.white,
    darkHeader1: Color(0xFF424242),
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
    Color? iconColor1,
    Color? darkHeader1,
  }) {
    return CustomColor(
      primary: primary ?? this.primary,
      yellow1: yellow1 ?? this.yellow1,
      pink1: pink1 ?? this.pink1,
      white1: white1 ?? this.white1,
      iconColor1: iconColor1 ?? this.iconColor1,
      darkHeader1: darkHeader1 ?? this.darkHeader1,
    );
  }
}
