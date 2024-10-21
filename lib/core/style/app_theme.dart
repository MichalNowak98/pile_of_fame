import 'package:flutter/material.dart';

ThemeData get lightThemeData => themeData.copyWith(
      appBarTheme: themeData.appBarTheme.copyWith(
        backgroundColor: const Color(0xFFDA9B2E),
        titleTextStyle: themeData.appBarTheme.titleTextStyle?.copyWith(
          color: Colors.black,
        ),
      ),
    );

ThemeData get darkThemeData => themeData.copyWith();

ThemeData get themeData => ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF94AF9F),
        titleTextStyle: TextStyle(
          fontSize: 20.0,
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 40.0),
        bodyMedium: TextStyle(fontSize: 20.0),
        bodySmall: TextStyle(fontSize: 16.0),
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: Colors.white70,
        secondary: Colors.black38,
        onSecondary: Colors.white70,
        error: Colors.red,
        onError: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black,
      ),
    );
