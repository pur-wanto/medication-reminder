import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medication_reminder/widgets/bottom_navbar.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              "assets/images/glass.png",
              fit: BoxFit.cover,
            )),
            Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 7,
                  sigmaY: 7,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Image.asset(
                        "assets/images/splash.png",
                        width: 270,
                        height: 270,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Column(
                        children: [
                          const Text(
                            "Your Personal Wellness Companion",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Poppins900'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Empowering your journey to optimal well-being",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Poppins400'),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNavBar()));
                            },
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color(0xFF8863E4)),
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 15)),
                              fixedSize:
                                  MaterialStateProperty.all(Size.fromWidth(
                                MediaQuery.of(context).size.width * 0.9,
                              )),
                            ),
                            child: const Text(
                              "Get started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins500'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
