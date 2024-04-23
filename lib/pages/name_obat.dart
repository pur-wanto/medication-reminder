import 'package:flutter/material.dart';
import 'package:medication_reminder/pages/detail_obat.dart';

class NameObat extends StatelessWidget {
  const NameObat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 10),
                color: const Color(0xFFF3FBFF),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    const Text(
                      "Nama Obat",
                      style: TextStyle(
                          fontFamily: 'Poppins500',
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 5,
                    width: 50,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nama Obat',
                    filled: true,
                    fillColor: Color(0xFFF3FBFF),
                    icon: ImageIcon(
                      AssetImage("assets/images/kapsul.png"),
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 130,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailObat()));
                },
                style: const ButtonStyle(
                    alignment: Alignment.center,
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                child: const Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
