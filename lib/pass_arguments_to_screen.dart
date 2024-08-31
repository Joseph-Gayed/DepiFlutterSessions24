import 'dart:async';

import 'package:flutter/material.dart';

class ScreenArguments {
  final String email;
  final String password;

  ScreenArguments(this.email, this.password);
}

// A Widget that extracts the necessary arguments from
// the ModalRoute.
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const routeName = '/profile';

  static void openScreen(BuildContext context,
      {ScreenArguments? screenArgs, bool shouldReplace = false}) {
    if (shouldReplace) {
      Navigator.pushReplacementNamed(context, ProfileScreen.routeName,
          arguments: screenArgs);
    } else {
      Navigator.pushNamed(context, ProfileScreen.routeName,
          arguments: screenArgs);
    }
  }

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ScreenArguments? screenArguments;
  bool showLoading = true;

  @override
  void initState() {
    super.initState();
    simulateLoading();
  }

  void simulateLoading() {
    setState(() {
      showLoading = true;
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        showLoading = false;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    loadArguments(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenArguments?.email ?? "Email"),
      ),
      body: Center(
        child: showLoading
            ? const CircularProgressIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email: "${screenArguments?.email}"'),
                  Text('Password: "${screenArguments?.password}"'),
                  ElevatedButton(
                      onPressed: simulateLoading, child: const Text("Reload"))
                ],
              ),
      ),
    );
  }

  void loadArguments(BuildContext context) {
    print("Loading Arguments from previous screen");
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    screenArguments =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
  }
}
