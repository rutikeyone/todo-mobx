// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle subHeading1;
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle buttonTextStyle1;

  const CustomTextTheme({
    required this.subHeading1,
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.heading4,
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
    heading2: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    heading3: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    heading4: GoogleFonts.lato(
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
    heading2: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    heading3: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    heading4: GoogleFonts.lato(
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
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      heading3: TextStyle.lerp(heading3, other.heading3, t)!,
      heading4: TextStyle.lerp(heading4, other.heading4, t)!,
      buttonTextStyle1:
          TextStyle.lerp(buttonTextStyle1, other.buttonTextStyle1, t)!,
    );
  }

  @override
  CustomTextTheme copyWith({
    TextStyle? subHeading1,
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? heading3,
    TextStyle? heading4,
    TextStyle? buttonTextStyle1,
  }) {
    return CustomTextTheme(
      subHeading1: subHeading1 ?? this.subHeading1,
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      heading3: heading3 ?? this.heading3,
      heading4: heading4 ?? this.heading4,
      buttonTextStyle1: buttonTextStyle1 ?? this.buttonTextStyle1,
    );
  }
}
