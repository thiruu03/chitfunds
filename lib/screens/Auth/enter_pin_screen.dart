import 'package:chitfunds/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class EnterPinScreen extends StatefulWidget {
  const EnterPinScreen({super.key});

  @override
  State<EnterPinScreen> createState() => _EnterPinScreenState();
}

class _EnterPinScreenState extends State<EnterPinScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04, // 4% of screen width
            vertical: screenHeight * 0.1, // 10% of screen height
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/blyn-logo-light.png",
                  height: screenHeight * 0.2, // 20% of screen height
                ),
              ),
              SizedBox(
                height: screenHeight * 0.15, // 7% spacing
              ),
              const Center(
                child: Text(
                  "Enter MPIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Consistent font size
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05, // 2% spacing
              ),
              OtpTextField(
                numberOfFields: 4,
                showFieldAsBox: true,
                focusedBorderColor: Theme.of(context).colorScheme.primary,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02, // 2% spacing
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget MPIN",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.07, // 7% spacing
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.38, // 40% of screen width
                      vertical: screenHeight * 0.02, // 2% of screen height
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16, // Responsive font size
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
