import 'package:flutter/material.dart';
import 'way_1/navigation_material_page_route.dart';
import 'way_2/navigation_push_named.dart';

class HomePage extends StatelessWidget {
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;

  const HomePage(
      {super.key, this.firstButtonNavigation, this.secondButtonNavigation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: firstButtonNavigation ??
                      () {
                        openProfileWay2(context);
                      },
                  child: Text("Profile")),
              ElevatedButton(
                  onPressed: secondButtonNavigation ??
                      () {
                        openSettingWay2(context);
                      },
                  child: Text("Settings")),
            ]),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;

  const ProfilePage(
      {super.key, this.firstButtonNavigation, this.secondButtonNavigation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: firstButtonNavigation ??
                      () {
                        openHomeWay2(context);
                      },
                  child: Text("Home")),
              ElevatedButton(
                  onPressed: secondButtonNavigation ??
                      () {
                        openSettingWay2(context);
                      },
                  child: Text("Settings"))
            ]),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  final void Function()? firstButtonNavigation;
  final void Function()? secondButtonNavigation;

  const SettingsPage(
      {super.key, this.firstButtonNavigation, this.secondButtonNavigation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: firstButtonNavigation ??
                      () {
                        openHomeWay2(context);
                      },
                  child: Text("Home")),
              ElevatedButton(
                  onPressed: secondButtonNavigation ??
                      () {
                        openProfileWay2(context);
                      },
                  child: Text("Profile"))
            ]),
      ),
    );
  }
}
