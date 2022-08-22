// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle subHeading1;
  final TextStyle heading1;
  final TextStyle dateTextStyle;
  final TextStyle dayTextStyle;
  final TextStyle monthTextStyle;
  final TextStyle buttonTextStyle1;

  const CustomTextTheme({
    required this.subHeading1,
    required this.heading1,
    required this.dateTextStyle,
    required this.dayTextStyle,
    required this.monthTextStyle,
    required this.buttonTextStyle1,
  });

  static final lightTextStyle = CustomTextTheme(
    subHeading1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    heading1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    dateTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    dayTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    monthTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    buttonTextStyle1: const TextStyle(
      color: Colors.white,
    ),
  );

  static final darkTextStyle = CustomTextTheme(
    subHeading1: GoogleFonts.lato(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.grey[400],
      ),
    ),
    heading1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    dateTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    dayTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    monthTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    buttonTextStyle1: const TextStyle(
      color: Colors.white,
    ),
  );

  @override
  ThemeExtension<CustomTextTheme> lerp(
      ThemeExtension<CustomTextTheme>? other, double t) {
    if (other is! CustomTextTheme) {
      return this;
    }

    return CustomTextTheme(
      subHeading1: TextStyle.lerp(subHeading1, other.subHeading1, t)!,
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      dateTextStyle: TextStyle.lerp(dateTextStyle, other.dateTextStyle, t)!,
      dayTextStyle: TextStyle.lerp(dayTextStyle, other.dayTextStyle, t)!,
      monthTextStyle: TextStyle.lerp(monthTextStyle, other.monthTextStyle, t)!,
      buttonTextStyle1:
          TextStyle.lerp(buttonTextStyle1, other.buttonTextStyle1, t)!,
    );
  }

  @override
  CustomTextTheme copyWith({
    TextStyle? subHeading1,
    TextStyle? heading1,
    TextStyle? dateTextStyle,
    TextStyle? dayTextStyle,
    TextStyle? monthTextStyle,
    TextStyle? buttonTextStyle1,
  }) {
    return CustomTextTheme(
      subHeading1: subHeading1 ?? this.subHeading1,
      heading1: heading1 ?? this.heading1,
      dateTextStyle: dateTextStyle ?? this.dateTextStyle,
      dayTextStyle: dayTextStyle ?? this.dayTextStyle,
      monthTextStyle: monthTextStyle ?? this.monthTextStyle,
      buttonTextStyle1: buttonTextStyle1 ?? this.buttonTextStyle1,
    );
  }
}
