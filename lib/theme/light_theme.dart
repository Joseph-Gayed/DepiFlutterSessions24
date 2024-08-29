import 'package:flutter/material.dart';

ColorScheme lightColorScheme = ColorScheme.light(
    primary: Colors.indigo[300]!,
    secondary: Colors.deepPurple[400]!);

AppBarTheme appBarTheme = const AppBarTheme(
  backgroundColor: Colors.indigo,
  centerTitle: true,
  foregroundColor: Colors.white,
);

FloatingActionButtonThemeData fabTheme = const FloatingActionButtonThemeData(
  backgroundColor: Colors.red,
  foregroundColor: Colors.yellow,
);

ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.yellow, // This sets the text color
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ));

OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(
        color: Colors.indigo, // Change this to your desired color
        width: 2.0, // Change this to your desired border width
      ),
      foregroundColor: Colors.indigo, // This sets the text color
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ));


TextTheme textTheme = TextTheme(
  titleLarge: TextStyle(color: Colors.red[900], fontWeight: FontWeight.bold),
  titleMedium: const TextStyle(color: Colors.blue),
  labelLarge: TextStyle(color: Colors.indigo[800]),
  bodyMedium: TextStyle(color: Colors.grey[700]),
);
