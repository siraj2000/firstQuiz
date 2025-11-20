import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData theme = ThemeData.dark();

  void changeMode() {
    final isDark = theme == ThemeData.dark();

    if (isDark) {
      theme = ThemeData.light();
    } else {
      theme = ThemeData.dark();
      Colors.black;
    }
    notifyListeners();
  }
}

// import 'package:flutter/material.dart';

// class ThemeProvider extends ChangeNotifier {
//   bool isDark = false;

//   void changeMode() {
//     isDark = !isDark;
//     notifyListeners();
//   }

//   ThemeData get theme => isDark ? darkTheme : lightTheme;

//   // --------------------------------------------------------------------------
//   // 🔵 LIGHT MODE (يبقى كما هو – ما غيرت عليه شيء)
//   // --------------------------------------------------------------------------
//   ThemeData get lightTheme => ThemeData(
//     brightness: Brightness.light,
//     fontFamily: "Roboto",
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: Colors.purple,
//     iconTheme: const IconThemeData(color: Colors.black),

//     textTheme: const TextTheme(
//       displayLarge: TextStyle(
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         color: Colors.black,
//       ),
//       bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
//     ),
//   );

//   // --------------------------------------------------------------------------
//   // ⚫ DARK MODE (معدّل بالكامل بشكل احترافي)
//   // --------------------------------------------------------------------------
//   ThemeData get darkTheme => ThemeData(
//     brightness: Brightness.dark,
//     fontFamily: "Roboto",

//     // 🔥 خلفية داكنة أنيقة
//     scaffoldBackgroundColor: const Color(0xFF0E0E0E),

//     // 🔥 لون رئيسي بنفسجي ناعم
//     primaryColor: const Color(0xFF9C27B0),

//     // 🔥 أيقونات بلون أبيض جميل
//     iconTheme: const IconThemeData(color: Colors.white),

//     // 🔥 نصوص متناسقة
//     textTheme: const TextTheme(
//       displayLarge: TextStyle(
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         color: Colors.white,
//       ),
//       bodyLarge: TextStyle(fontSize: 16, color: Colors.white70),
//       bodyMedium: TextStyle(fontSize: 14, color: Colors.white60),
//     ),

//     // 🔥 أزرار جميلة في الوضع الداكن
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color(0xFF9C27B0),
//         foregroundColor: Colors.white,
//         padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//         textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//     ),

//     // 🔥 TextField أنيق في الدارك مود
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: const Color(0xFF1A1A1A),
//       hintStyle: const TextStyle(color: Colors.white38),
//       contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: BorderSide(color: Colors.white24),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: BorderSide(color: Colors.white24),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: Color(0xFF9C27B0), width: 2),
//       ),
//     ),
//   );
// }
