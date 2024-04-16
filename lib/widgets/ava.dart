import 'package:flutter/material.dart';

class Ava extends StatelessWidget {
  const Ava({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
    );
  }
}
