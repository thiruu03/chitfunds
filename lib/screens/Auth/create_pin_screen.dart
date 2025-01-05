import 'package:chitfunds/screens/Auth/enter_pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CreatePinScreen extends StatelessWidget {
  const CreatePinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.03, // 4% of screen width
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
                height: screenHeight * 0.07, // 3% spacing
              ),
              const Center(
                child: Text(
                  "Create your MPIN and protect your account!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05, // 3% spacing
              ),
              const Center(
                child: Text(
                  "Create MPIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Consistent font size
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01, // 1% spacing
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
                height: screenHeight * 0.05, // 2% spacing
              ),
              const Center(
                child: Text(
                  "Confirm MPIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Consistent font size
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01, // 1% spacing
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
                height: screenHeight * 0.05, // 3% spacing
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EnterPinScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.40, // 40% of screen width
                      vertical: screenHeight * 0.02, // 2% of screen height
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
