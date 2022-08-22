import 'package:flutter/material.dart';

class EasySnackbar {
  final BuildContext context;

  const EasySnackbar.of({required this.context});

  void showSnackbar({
    required String label,
    Duration? duration,
    Color? backgroundColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: duration ?? const Duration(milliseconds: 600),
        content: Text(
          label,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
