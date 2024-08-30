import 'package:flutter/material.dart';

ColorScheme colorScheme = ColorScheme.fromSeed(
  seedColor: Colors.teal[700]!,
  primary: Colors.teal[700]!,
  secondary: Colors.lime[300]!,
);

ThemeData appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,

    appBarTheme: AppBarTheme(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: colorScheme.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: colorScheme.primary,
            backgroundColor: colorScheme.secondary)),
    scaffoldBackgroundColor: Colors.teal[50],
    textTheme: TextTheme(
      titleLarge:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      titleMedium: const TextStyle(color: Colors.blue),
      labelLarge: TextStyle(color: Colors.indigo[800]),
      bodyMedium: TextStyle(color: Colors.grey[700]),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: Colors.grey,
        backgroundColor: colorScheme.secondary));
