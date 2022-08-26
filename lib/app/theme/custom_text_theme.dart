// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
  final TextStyle taskTileTitle1;
  final TextStyle taskTileSubtitle1;
  final TextStyle taskTileSubtitle2;
  final TextStyle taskTileSubtitle3;
  final TextStyle modalBottomSheetButton1;
  final TextStyle modalBottomSheetButton2;

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
    required this.taskTileTitle1,
    required this.taskTileSubtitle1,
    required this.taskTileSubtitle2,
    required this.taskTileSubtitle3,
    required this.modalBottomSheetButton1,
    required this.modalBottomSheetButton2,
  });

  static final lightTextStyle = CustomTextTheme(
    subHeading1: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    heading1: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    heading2: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    heading3: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    hintStyle1: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
    heading4: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    button1: const TextStyle(
      color: Colors.white,
    ),
    labelStyle1: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    errorStyle1: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    taskTileTitle1: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    taskTileSubtitle1: TextStyle(fontSize: 15, color: Colors.grey[100]),
    taskTileSubtitle2: TextStyle(
      fontSize: 13,
      color: Colors.grey[100],
    ),
    taskTileSubtitle3: const TextStyle(
        fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
    modalBottomSheetButton1: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    modalBottomSheetButton2: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );

  static final darkTextStyle = CustomTextTheme(
    subHeading1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.grey[400],
    ),
    heading1: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    heading2: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    heading3: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    heading4: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    ),
    button1: const TextStyle(
      color: Colors.white,
    ),
    hintStyle1: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
    labelStyle1: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    errorStyle1: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    taskTileTitle1: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    taskTileSubtitle1: TextStyle(fontSize: 15, color: Colors.grey[100]),
    taskTileSubtitle2: TextStyle(
      fontSize: 13,
      color: Colors.grey[100],
    ),
    taskTileSubtitle3: const TextStyle(
        fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
    modalBottomSheetButton1: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    modalBottomSheetButton2: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
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
      hintStyle1: TextStyle.lerp(hintStyle1, other.hintStyle1, t)!,
      heading4: TextStyle.lerp(heading4, other.heading4, t)!,
      button1: TextStyle.lerp(button1, other.button1, t)!,
      labelStyle1: TextStyle.lerp(labelStyle1, other.labelStyle1, t)!,
      errorStyle1: TextStyle.lerp(errorStyle1, other.errorStyle1, t)!,
      taskTileTitle1: TextStyle.lerp(taskTileTitle1, other.taskTileTitle1, t)!,
      taskTileSubtitle1:
          TextStyle.lerp(taskTileSubtitle1, other.taskTileSubtitle2, t)!,
      taskTileSubtitle2:
          TextStyle.lerp(taskTileSubtitle2, other.taskTileSubtitle2, t)!,
      taskTileSubtitle3:
          TextStyle.lerp(taskTileSubtitle3, other.taskTileSubtitle3, t)!,
      modalBottomSheetButton1: TextStyle.lerp(
          modalBottomSheetButton1, other.modalBottomSheetButton1, t)!,
      modalBottomSheetButton2: TextStyle.lerp(
          modalBottomSheetButton2, other.modalBottomSheetButton2, t)!,
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
    TextStyle? taskTileTitle1,
    TextStyle? taskTileSubtitle1,
    TextStyle? taskTileSubtitle2,
    TextStyle? taskTileSubtitle3,
    TextStyle? modalBottomSheetButton1,
    TextStyle? modalBottomSheetButton2,
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
      taskTileTitle1: taskTileTitle1 ?? this.taskTileTitle1,
      taskTileSubtitle1: taskTileSubtitle1 ?? this.taskTileSubtitle1,
      taskTileSubtitle2: taskTileSubtitle2 ?? this.taskTileSubtitle2,
      taskTileSubtitle3: taskTileSubtitle3 ?? this.taskTileSubtitle3,
      modalBottomSheetButton1:
          modalBottomSheetButton1 ?? this.modalBottomSheetButton1,
      modalBottomSheetButton2:
          modalBottomSheetButton2 ?? this.modalBottomSheetButton2,
    );
  }
}
