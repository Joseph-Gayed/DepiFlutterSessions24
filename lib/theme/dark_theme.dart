import 'package:flutter/material.dart';

ColorScheme darkColorScheme = ColorScheme.dark(
    primary: Colors.orange[300]!,
    secondary: Colors.blue[900]!);

AppBarTheme appBarThemeDark = const AppBarTheme(
  backgroundColor: Colors.orange,
  centerTitle: true,
  foregroundColor: Colors.black,
);

FloatingActionButtonThemeData fabThemeDark = FloatingActionButtonThemeData(
  backgroundColor: Colors.orange,
  foregroundColor: Colors.grey[900],
);


ElevatedButtonThemeData elevatedButtonThemeDark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
  backgroundColor: Colors.orange,
  foregroundColor: Colors.grey[900], // This sets the text color
  textStyle: const TextStyle(
    fontWeight: FontWeight.bold,
  ),
));

OutlinedButtonThemeData outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  side: const BorderSide(
    color: Colors.orange, // Change this to your desired color
    width: 2.0, // Change this to your desired border width
  ),
  foregroundColor: Colors.orange, // This sets the text color
  textStyle: const TextStyle(
    fontWeight: FontWeight.bold,
  ),
));

TextTheme textThemeDark = TextTheme(
  titleLarge:
      const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
  titleMedium: const TextStyle(color: Colors.green),
  labelLarge: TextStyle(color: Colors.yellow[300]),
  bodyMedium: const TextStyle(color: Colors.white),
);
