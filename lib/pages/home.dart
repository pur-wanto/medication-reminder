import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.asset('assets/images/glass.png', fit: BoxFit.cover),
          ),
          ListView(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const Column(
                      children: [
                        Text(
                          "Health Overview",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins500',
                              color: Colors.white),
                        ),
                        Text(
                          "Your daily health statistics",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins400',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white.withOpacity(0.4),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/circle.gif",
                                      height: 100,
                                      width: 100,
                                      color: const Color(0xFFA37EFF),
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "8k ",
                                          style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.black,
                                              fontFamily: "Poppins400"),
                                        ),
                                        Text(
                                          "steps",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Poppins400'),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "Out of 10k",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Poppins400",
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 5.0, sigmaY: 5.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Today",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins400',
                                              color: Colors.black),
                                        ),
                                        ImageIcon(AssetImage(
                                          "assets/images/chevron-down.png",
                                        ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/images/frame1.png",
                                        height: 48,
                                        width: 48,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/images/frame2.png",
                                        height: 48,
                                        width: 48,
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/images/frame3.png",
                                        height: 48,
                                        width: 48,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/images/frame4.png",
                                        height: 48,
                                        width: 48,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Water",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins400',
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          "assets/images/drop.png",
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2.1 ",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Poppins400',
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "litters",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins400',
                                            color: Colors.black),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Calories",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins400',
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      ImageIcon(
                                        AssetImage(
                                          "assets/images/calories.png",
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1.2k ",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Poppins400',
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "kCal",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins400',
                                            color: Colors.black),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:
                                      const Color(0xffD7C9FF).withOpacity(0.4),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Pulse",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "Poppins400"),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              "assets/images/water.png",
                                              height: 30,
                                              width: 30,
                                            )
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              "78 ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 28,
                                                  fontFamily: "Poppins600"),
                                            ),
                                            Text(
                                              "BPM",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: "Poppins400"),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              "Weight",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: "Poppins400"),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              "assets/images/gauge.png",
                                              height: 30,
                                              width: 30,
                                            )
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              "64 ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 28,
                                                  fontFamily: "Poppins600"),
                                            ),
                                            Text(
                                              "Kg",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: "Poppins400"),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/btn-setting.png",
                              height: 48,
                              width: 48,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                "assets/images/wired.gif",
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Test Result",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Poppins400"),
                        ),
                        Text(
                          "Show all",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins300"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFAC8FFF),
                          ),
                          child: Image.asset(
                            "assets/images/drop.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        const Text(
                          "General blood analysis",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Poppins400"),
                        ),
                        Image.asset(
                          "assets/images/btn-right.png",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Header
          ClipRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ))),
          SafeArea(
            child: Align(
              alignment: const Alignment(0, -1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/frame.png",
                    height: 48,
                    width: 48,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Have a good day!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins400'),
                      ),
                      Text(
                        "Olivia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins600'),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent),
                      child: Image.asset(
                        "assets/images/btn-setting.png",
                        width: 48,
                        height: 48,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
