import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: 12),
        bodyMedium: TextStyle(fontSize: 14),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      ),
    );
  }
}
