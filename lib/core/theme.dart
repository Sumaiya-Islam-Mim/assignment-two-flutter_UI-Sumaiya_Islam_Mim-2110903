import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: const Color(0xFF5F5CFF),
  );
}

// Theme configuration for the app
theme: ThemeData(
  fontFamily: 'Poppins', // add in pubspec
)

// Use system theme mode, with a fallback to dark theme
themeMode: ThemeMode.system,
darkTheme: ThemeData.dark(),
