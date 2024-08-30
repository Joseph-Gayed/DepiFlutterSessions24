import 'package:flutter/material.dart';
import 'package:flutter_sessoin_04/session_04.dart';
import 'package:flutter_sessoin_04/theme/light_theme.dart';

import 'theme/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      if (currentThemeMode == ThemeMode.light) {
        currentThemeMode = ThemeMode.dark;
      } else {
        currentThemeMode = ThemeMode.light;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Session04(
          clickToChangeTheme: toggleTheme, currentThemeMode: currentThemeMode),
      themeMode: currentThemeMode,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        appBarTheme: appBarTheme,
        floatingActionButtonTheme: fabTheme,
        elevatedButtonTheme: elevatedButtonTheme,
        outlinedButtonTheme: outlinedButtonTheme,
        textTheme: textTheme,
        scaffoldBackgroundColor: Colors.indigo[100],
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        appBarTheme: appBarThemeDark,
        floatingActionButtonTheme: fabThemeDark,
        elevatedButtonTheme: elevatedButtonThemeDark,
        outlinedButtonTheme: outlinedButtonThemeDark,
        textTheme: textThemeDark,
        scaffoldBackgroundColor: Colors.grey[900]!,
      ),
    );
  }
}
