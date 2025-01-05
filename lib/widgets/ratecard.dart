import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RateCard extends StatelessWidget {
  final String lottiePath;
  final String label;
  final String rate;

  const RateCard({
    required this.lottiePath,
    required this.label,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    // Getting the screen's width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              blurRadius: 9,
              color: Color.fromARGB(255, 159, 159, 159),
              offset: Offset(0, 0),
              blurStyle: BlurStyle.outer,
            ),
          ],
          color: Colors.white,
        ),
        height: screenHeight * 0.13, // Height is 15% of the screen height
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LottieBuilder.asset(
              lottiePath,
              height: screenHeight * 0.08, // Height is 10% of the screen height
            ),
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.02, // 3% of screen width
                top: screenHeight * 0.02, // 2% of screen height
                bottom: screenHeight * 0.02, // 2% of screen height
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: screenWidth *
                          0.037, // Font size based on screen width
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.001,
                  ), // Spacing based on screen height
                  Text(
                    rate,
                    style: TextStyle(
                      fontSize:
                          screenWidth * 0.04, // Font size based on screen width
                      color: const Color.fromARGB(255, 50, 116, 52),
                    ),
                  ),
                  SizedBox(
                      height: screenHeight *
                          0.001), // Spacing based on screen height
                  const Text("Per gram"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
