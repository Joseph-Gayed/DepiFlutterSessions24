import 'package:flutter/material.dart';
import 'package:flutter_sessoin_04/session_04.dart';
import 'package:flutter_sessoin_04/theme/light_theme.dart';

import 'theme/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const Session04(),

      theme: ThemeData(
        colorScheme: lightColorScheme,
        appBarTheme: appBarTheme,
        floatingActionButtonTheme: fabTheme,
        elevatedButtonTheme: elevatedButtonTheme,
        outlinedButtonTheme: outlinedButtonTheme,
        textTheme: textTheme,
        scaffoldBackgroundColor: Colors.indigo[100],
      ),
      //
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
