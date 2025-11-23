import 'package:flutter/material.dart';
import 'package:login_test/core/color_theme.dart';
import 'package:login_test/core/text_theme.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDark = false;

  ThemeData get lightTheme => ThemeData(
    brightness: isDark ? Brightness.light : Brightness.dark,

    // scaffoldBackgroundColor: ColorTheme.bgLight,
    primaryColor: ColorTheme.primary,
    iconTheme: const IconThemeData(color: Colors.black),

    textTheme: isDark
        ? AppTextTheme.lightTextTheme
        : AppTextTheme.darkTextTheme,
  );

  void changeMode() {
    isDark = !isDark;
    notifyListeners();
  }
}
