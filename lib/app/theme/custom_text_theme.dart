// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle subHeading1;
  final TextStyle heading1;

  const CustomTextTheme({
    required this.subHeading1,
    required this.heading1,
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
    );
  }

  @override
  CustomTextTheme copyWith({
    TextStyle? subHeading1,
    TextStyle? heading1,
  }) {
    return CustomTextTheme(
      subHeading1: subHeading1 ?? this.subHeading1,
      heading1: heading1 ?? this.heading1,
    );
  }
}
