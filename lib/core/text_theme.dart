import 'package:flutter/material.dart';
import 'color_theme.dart';

class AppTextTheme {
  // LIGHT MODE text styles
  static const TextTheme lightTextTheme = TextTheme(
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: ColorTheme.textLight,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: ColorTheme.textLight),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
  );

  static const TextTheme darkTextTheme = TextTheme(
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: ColorTheme.textDark,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: ColorTheme.textDark),

    bodyMedium: TextStyle(
      fontSize: 14,
      color: ColorTheme.textBlue,
      //color: Color.fromARGB(77, 255, 255, 255),
    ),
  );
}
