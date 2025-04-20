import 'package:flutter/material.dart';

class AppDarkTheme {
  static const Color primaryColor = Color(0xff84AFF0);
  static const Color secondaryColor = Color(0xff7377C3);
  static const Color cardColor = Color(0xffEDEDF1);
  static const Color backgroundColor = Color(0xff21242D);
  static const Color textColor = Colors.white;

  static ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryColor,
      cardColor: cardColor.withOpacity(0.4),
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: backgroundColor,
        onSurface: textColor,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: textColor, fontSize: 16),
        bodyMedium: TextStyle(color: textColor, fontSize: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
