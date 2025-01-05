import 'package:chitfunds/screens/Auth/login_screen.dart';
import 'package:chitfunds/screens/Auth/register_screen.dart';
import 'package:flutter/material.dart';

class ShowRegisterOrLogin extends StatefulWidget {
  const ShowRegisterOrLogin({super.key});

  @override
  State<ShowRegisterOrLogin> createState() => _ShowRegisterOrLoginState();
}

class _ShowRegisterOrLoginState extends State<ShowRegisterOrLogin> {
  bool showRegisterPage = true;

  void togglePages() {
    setState(() {
      showRegisterPage = !showRegisterPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showRegisterPage) {
      return RegisterScreen(
        ontap: togglePages,
      );
    } else {
      return LoginScreen(
        ontap: togglePages,
      );
    }
  }
}
