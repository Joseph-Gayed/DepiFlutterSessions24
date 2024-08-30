import 'package:flutter/material.dart';

import '../app_theme.dart';
import 'bottom_nav_container.dart';

class MyAppWay3 extends StatelessWidget {
  const MyAppWay3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: 'Way3Navigation',
      debugShowCheckedModeBanner: false,
      home: const BottomNavContainer(),
    );
  }
}
