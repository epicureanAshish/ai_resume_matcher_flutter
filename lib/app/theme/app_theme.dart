import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.blue,
      scaffoldBackgroundColor: const Color(0xffF8FAFC),
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ),
    );
  }
}