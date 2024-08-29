import 'package:flutter/material.dart';

import 'buttons.dart';
import 'gesture_detector.dart';

class Session04 extends StatelessWidget {
  const Session04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text(
            "Session 04",
          )),
      body: screenContent(context),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: onFabClicked,
        icon: const Icon(Icons.add),
        label: const Text("New"),
      ),
    );
  }

  Widget screenContent(BuildContext context) {
    return Container(
      // child: gestureDetectorDemo(),
      child: buttonsDemo(context),
    );
  }

  void onFabClicked() {
    print("Fab Clicked");
  }
}
