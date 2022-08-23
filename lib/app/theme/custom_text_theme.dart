// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final TextStyle subHeading1;
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle button1;
  final TextStyle hintStyle1;
  final TextStyle labelStyle1;
  final TextStyle errorStyle1;

  const CustomTextTheme({
    required this.subHeading1,
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.heading4,
    required this.button1,
    required this.hintStyle1,
    required this.labelStyle1,
    required this.errorStyle1,
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
        color: Colors.black,
      ),
    ),
    hintStyle1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w200,
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
    button1: const TextStyle(
      color: Colors.white,
    ),
    labelStyle1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w200,
        color: Colors.black,
      ),
    ),
    errorStyle1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w200,
        color: Colors.red,
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
        color: Colors.white,
      ),
    ),
    heading4: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    ),
    button1: const TextStyle(
      color: Colors.white,
    ),
    hintStyle1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w200,
        color: Colors.grey,
      ),
    ),
    labelStyle1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w200,
        color: Colors.white,
      ),
    ),
    errorStyle1: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w200,
        color: Colors.red,
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
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      heading3: TextStyle.lerp(heading3, other.heading3, t)!,
      hintStyle1: TextStyle.lerp(hintStyle1, other.hintStyle1, t)!,
      heading4: TextStyle.lerp(heading4, other.heading4, t)!,
      button1: TextStyle.lerp(button1, other.button1, t)!,
      labelStyle1: TextStyle.lerp(labelStyle1, other.labelStyle1, t)!,
      errorStyle1: TextStyle.lerp(errorStyle1, other.errorStyle1, t)!,
    );
  }

  @override
  CustomTextTheme copyWith({
    TextStyle? subHeading1,
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? heading3,
    TextStyle? heading4,
    TextStyle? button1,
    TextStyle? hintStyle1,
    TextStyle? labelStyle1,
    TextStyle? errorStyle1,
  }) {
    return CustomTextTheme(
      subHeading1: subHeading1 ?? this.subHeading1,
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      heading3: heading3 ?? this.heading3,
      hintStyle1: hintStyle1 ?? this.hintStyle1,
      heading4: heading4 ?? this.heading4,
      button1: button1 ?? this.button1,
      labelStyle1: labelStyle1 ?? this.labelStyle1,
      errorStyle1: errorStyle1 ?? this.errorStyle1,
    );
  }
}
