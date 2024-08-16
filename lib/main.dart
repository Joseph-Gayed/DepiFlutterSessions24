import 'package:flutter/material.dart';

import 'session_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Session01Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
