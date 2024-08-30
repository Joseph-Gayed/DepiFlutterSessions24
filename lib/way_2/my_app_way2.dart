import 'package:flutter/material.dart';
import 'package:flutter_session_05/screens.dart';
import 'package:flutter_session_05/splash_page.dart';

import '../app_theme.dart';

class MyAppWay2 extends StatelessWidget {
  const MyAppWay2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: 'Way2Navigation',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash.route,
      routes: {
        AppRoute.splash.route: (context) => SplashPage(),
        AppRoute.home.route: (context) => HomePage(),
        AppRoute.profile.route: (context) => ProfilePage(),
        AppRoute.settings.route: (context) => SettingsPage(),
        // AppRoute.notifications.route : (context) => SettingsPage()
      },
    );
  }
}


enum AppRoute {
  splash("/splash"),
  home("/home"),
  profile("/profile"),
  settings("/settings");

  final String route;

  const AppRoute(this.route);
}
