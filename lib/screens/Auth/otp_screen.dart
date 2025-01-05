import 'package:chitfunds/screens/Auth/create_pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/blyn-logo-light.png",
                  height: screenHeight * 0.2, // 20% of screen height
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04, // 3% spacing
              ),
              const Center(
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 20, // Consistent font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04, // 1% spacing
              ),
              const Text("We have sent you an OTP to verify your"),
              const Text("Mobile number"),
              SizedBox(
                height: screenHeight * 0.03, // 2% spacing
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
              const Text("Trying to fetch your OTP. Blyn cannot read"),
              const Text("your other messages."),
              SizedBox(
                height: screenHeight * 0.05, // 4% spacing
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive OTP?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Resend",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05, // 2% spacing
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreatePinScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.34, // 40% of screen width
                      vertical: screenHeight * 0.02, // 2% of screen height
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: const Text(
                    "Verify OTP",
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
