import 'package:chitfunds/screens/Auth/show_register_or_login.dart';
import 'package:chitfunds/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const ShowRegisterOrLogin(),
      builder: (context, child) {
        // Adjust text size and other widgets based on screen size
        final mediaQuery = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQuery.copyWith(
            textScaler: TextScaler.linear(mediaQuery.size.width / 360), // Adjust text scaling
          ),
          child: child!,
        );
      },
    );
  }
}
