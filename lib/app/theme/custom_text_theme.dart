// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle dateStyle;

  const CustomTextTheme({required this.dateStyle});

  static final light = CustomTextTheme(
    dateStyle: GoogleFonts.lato(),
  );

  static final dark = CustomTextTheme(
    dateStyle: GoogleFonts.lato(),
  );

  @override
  ThemeExtension<CustomTextTheme> lerp(
      ThemeExtension<CustomTextTheme>? other, double t) {
    if (other is! CustomTextTheme) {
      return this;
    }

    return CustomTextTheme(
      dateStyle: TextStyle.lerp(dateStyle, other.dateStyle, t)!,
    );
  }

  @override
  CustomTextTheme copyWith({
    TextStyle? dateStyle,
  }) {
    return CustomTextTheme(
      dateStyle: dateStyle ?? this.dateStyle,
    );
  }
}
