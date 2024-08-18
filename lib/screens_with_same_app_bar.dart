import 'package:flutter/material.dart';
import 'package:flutter_session_02/custom_app_bar.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.icecream_rounded,
          color: Colors.white,
        ),
        title: const Text(
          "Screen 1",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),*/
      appBar: MyAppBar(title: "Screen1"),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.icecream_rounded,
          color: Colors.white,
        ),
        title: const Text(
          "Screen 2",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),*/

      appBar: MyAppBar(title: "Screen2"),
    );
  }
}
