import 'package:flutter/material.dart';

ThemeData get lightThemeData => themeData.copyWith(
      backgroundColor: const Color(0xFFBBD6B8),
      appBarTheme: themeData.appBarTheme.copyWith(
        backgroundColor: const Color(0xFF94AF9F),
        titleTextStyle: themeData.appBarTheme.titleTextStyle?.copyWith(
          color: Colors.black,
        ),
      ),
    );

ThemeData get darkThemeData => themeData.copyWith();

ThemeData get themeData => ThemeData(
      backgroundColor: const Color(0xFFBBD6B8),
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
    );
