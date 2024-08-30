import 'package:flutter/material.dart';

import 'buttons.dart';

class Session04 extends StatelessWidget {
  final void Function()? clickToChangeTheme;
  final ThemeMode currentThemeMode;

  const Session04(
      {super.key,
      this.clickToChangeTheme,
      this.currentThemeMode = ThemeMode.light});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
        ),
        title: const Text(
          "Session 04",
        ),
        actions: [
          IconButton(
              onPressed: clickToChangeTheme,
              icon: currentThemeMode == ThemeMode.light
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode))
        ],
      ),
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
