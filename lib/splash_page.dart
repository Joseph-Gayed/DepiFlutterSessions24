import 'package:flutter/material.dart';

import 'way_1/navigation_material_page_route.dart';
import 'way_2/navigation_push_named.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // startSplashTimer(context);

    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: TextButton(
            onPressed: () {
              navigateToNextScreen(context);
            },
            child: Text(
              "Welcome to Our App",
              style: Theme.of(context).textTheme.titleLarge,
            )),
      ),
    );
  }

  // Add a delay before navigating to the Landing Screen
  void startSplashTimer(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Start the animation after a 2-second delay
      navigateToNextScreen(context);
    });
  }

  void navigateToNextScreen(BuildContext context) {
    // openHomeWay1(context); // will NOT remove the splash from the screens stack
    // replaceWithHomeWay1(context); // will REMOVE the splash from the screens stack

    // openHomeWay2(context); // will NOT remove the splash from the screens stack
    replaceWithHomeWay2(context); // will REMOVE the splash from the screens stack
  }
}
