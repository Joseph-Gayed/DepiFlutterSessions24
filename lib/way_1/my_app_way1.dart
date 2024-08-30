import 'package:flutter/material.dart';
import 'package:flutter_session_05/app_theme.dart';
import 'package:flutter_session_05/screens.dart';

import '../splash_page.dart';

class MyAppWay1 extends StatelessWidget {
  const MyAppWay1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: 'Way1Navigation',
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
