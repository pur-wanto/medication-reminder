import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController textController = TextEditingController();
  final dio = Dio();
  String _responseData = '';
  String displayText = "Hello My bot, how are you today?";

  void updateText(String newText) {
    setState(() {
      displayText = newText;
    });
  }

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
                    // width: 350,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                    child: Text(
                      displayText,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins400",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    // width: 350,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        color: Color(0xFFAC8FFF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Text(
                      _responseData,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins400",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
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
                    height: 90,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ))),
          const SafeArea(
            child: Align(
              alignment: Alignment(0, -1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Fitalisa",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins600'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SafeArea(
            child: Align(
              alignment: Alignment(0, -1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Fitalisa",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins600'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Align(
              alignment: const Alignment(0, 1),
              child: TextField(
                controller: textController,
                onSubmitted: (String value) {
                  updateText(value);
                  fetchData(displayText);
                  textController.clear();
                },
                decoration: const InputDecoration(
                    hintText: "Type Message...",
                    hintStyle: TextStyle(color: Color(0xFFAC8FFF)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> fetchData(String displayText) async {
    final dio = Dio();

    const baseUrl =
        'https://ftmobilestg.inhealth.co.id/generative-ai/api/FitalisaTextOnly';

    try {
      final response =
          await dio.post(baseUrl, queryParameters: {'prompt': displayText});

      if (response.statusCode == 200) {
        setState(() {
          _responseData = response.toString();
          print(_responseData);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
