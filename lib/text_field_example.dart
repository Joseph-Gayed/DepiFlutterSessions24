import 'package:flutter/material.dart';
import 'package:flutter_session_06/extensions.dart';

import 'pass_arguments_to_screen.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool isValidEmail = true, isValidPassword = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Email',
                  errorText: isValidEmail ? null : "Invalid email"),
              onChanged: (newText) {
                validateEmail();
              },
              // onSubmitted: onSubmitted,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  errorText: isValidPassword ? null : "Invalid Password"),
              obscureText: true,
              onChanged: (newText) {
                validatePassword();
              },
              // onSubmitted: onSubmitted,
            ),
            TextButton(onPressed: validate, child: const Text("Login"))
          ],
        ),
      ),
    );
  }

  void validateEmail() {
    setState(() {
      isValidEmail = _emailController.text.isValidEmail();
    });
  }

  void validatePassword() {
    setState(() {
      isValidPassword = _passwordController.text.isValidPassword();
    });
  }

  resetEmailValidationStates() {
    setState(() {
      isValidEmail = true;
    });
  }

  resetPasswordValidationStates() {
    setState(() {
      isValidPassword = true;
    });
  }

  void validate() {
    validateEmail();
    validatePassword();

    if (isValidEmail && isValidPassword) {
      showSubmittedDataInDialog(
          _emailController.text, _passwordController.text);
    }
  }

  void showSubmittedDataInDialog(String email, String password) async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Your Credentials!'),
          content: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email: "$email"'),
                Text('Password: "$password"'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigator.pop(context);
                ProfileScreen.openScreen(context,
                    screenArgs: ScreenArguments(email, password),
                    shouldReplace: true);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
