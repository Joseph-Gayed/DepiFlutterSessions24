import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session_06/form_example.dart';

import 'text_field_example.dart';
import 'pass_arguments_to_screen.dart';
import 'stateful_example.dart';

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
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                centerTitle: true,
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple)),
        // home: const StatefulExample(title: "Stateful demo"),
        // home: const TextFieldExample(),
        home: const FormExample(),
        routes: {
          ProfileScreen.routeName: (context) => const ProfileScreen(),
        }
      );
  }
}
