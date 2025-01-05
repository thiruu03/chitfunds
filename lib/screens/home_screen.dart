import 'package:chitfunds/widgets/ratecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                expandedHeight: screenHeight * 0.2, // 30% of screen height
                collapsedHeight: screenHeight * 0.2, // 30% of screen height
                leading: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                title: Text(
                  "BLYN Chitfunds",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                floating: true,
                centerTitle: true,
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.04, // 4% of screen width
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.10), // 7% spacing
                      Image.asset(
                        "assets/images/Bhima-jewellers-Bangalore.jpg",
                        height: screenHeight * 0.2, // 20% of screen height
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: screenHeight * 0.02), // 3% spacing
                      const Text(
                        "Welcome to the digital world for Blyn chitfunds!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01), // 2% spacing
                      const Text(
                        "Welcome to BLYN Chitfunds, your reliable financial partner. We offer secure and transparent chit fund solutions to help you save, invest, and achieve your goals. With customer-focused service and a commitment to excellence, we ensure a rewarding financial journey. Join us and grow your wealth with confidence!",
                      ),
                      SizedBox(height: screenHeight * 0.02), // 3% spacing
                      Row(
                        children: [
                          const Text(
                            "Why save gold",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                              width: screenWidth * 0.01), // 2% of screen width
                          const Icon(
                            Icons.info,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01), // 2% spacing
                      const Text(
                        "Saving gold provides financial security, acts as a hedge against inflation, and retains long-term value. It’s a trusted investment, offering liquidity and cultural significance for future generations.",
                      ),
                      SizedBox(height: screenHeight * 0.03), // 5% spacing
                      SizedBox(
                        height: screenHeight *
                            0.25, // 25% height for horizontal ListView
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              width: screenWidth * 0.52, // 60% of screen width
                              margin: EdgeInsets.only(
                                  right: screenWidth * 0.03), // 3% spacing
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.r),
                                      topRight: Radius.circular(12.r),
                                    ),
                                    child: Image.asset(
                                      'assets/images/ad2.jpeg',
                                      height: screenHeight *
                                          0.15, // 15% of screen height
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12.r),
                                          bottomRight: Radius.circular(12.r),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: screenHeight *
                                            0.02, // 2% of screen height
                                        horizontal: screenWidth *
                                            0.15, // 15% of screen width
                                      ),
                                    ),
                                    child: const Text(
                                      "Know more",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * 0.15, // 15% from top
            left: screenWidth * 0.08, // 8% from left
            right: screenWidth * 0.08, // 8% from right
            child: const Text(
              "Rate updated by 03/01/2025 , 11:12 AM",
              style: TextStyle(
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: screenHeight * 0.2, // 20% from top
            left: screenWidth * 0.04, // 4% from left
            right: screenWidth * 0.04, // 4% from right
            child: Row(
              children: [
                const RateCard(
                  lottiePath: 'assets/images/Silver.json',
                  label: 'Gold rate',
                  rate: '₹100.88',
                ),
                SizedBox(width: screenWidth * 0.05), // 5% of screen width
                const RateCard(
                  lottiePath: 'assets/images/Gold.json',
                  label: 'Silver rate',
                  rate: '₹100.88',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
