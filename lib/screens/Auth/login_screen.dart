import 'package:chitfunds/screens/Auth/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? ontap;
  const LoginScreen({super.key, required this.ontap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04, // 4% of screen width
            vertical: screenHeight * 0.1, // 10% of screen height
          ).copyWith(bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/blyn-logo-light.png",
                  height: screenHeight * 0.2, // 20% of screen height
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // 3% spacing
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Log in to Blyn",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23, // Static font size
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Welcome back! Enter your details to log in."),
                    SizedBox(height: 2),
                    Text("Please enter your mobile number to continue."),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.08), // 8% spacing
              Text(
                "Mobile Number*",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: screenHeight * 0.005), // 0.5% spacing
              IntlPhoneField(
                controller: phoneController,
                initialCountryCode: 'IN',
                countries: const [
                  Country(
                    name: "India",
                    code: 'IN',
                    flag: '',
                    dialCode: '91',
                    nameTranslations: {'en': 'India'},
                    minLength: 10,
                    maxLength: 10,
                  ),
                ],
                autofocus: true,
                showDropdownIcon: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: screenHeight * 0.04), // 4% spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: widget.ontap,
                    child: const Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03), // 3% spacing
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.39, // 40% of screen width
                      vertical: screenHeight * 0.02, // 2% of screen height
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: const Text(
                    "Log in",
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