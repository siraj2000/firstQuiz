// import 'package:flutter/material.dart';

// final ThemeData appTheme = ThemeData(
//   fontFamily: "Roboto", // ← غيرها لو عندك خط آخر
//   // Colors
//   primaryColor: const Color(0xFF6A1B9A),
//   scaffoldBackgroundColor: Colors.white,

//   // AppBar
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Color(0xFF6A1B9A),
//     foregroundColor: Colors.white,
//     elevation: 0,
//   ),

//   // Text Theme
//   textTheme: const TextTheme(
//     displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//     displayMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//     displaySmall: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),

//     headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//     headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),

//     bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
//     bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
//     bodySmall: TextStyle(fontSize: 12, color: Colors.grey),

//     labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//   ),
// );

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
