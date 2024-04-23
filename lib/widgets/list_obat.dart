import 'package:flutter/material.dart';
import 'package:medication_reminder/pages/name_obat.dart';

class ListObat extends StatelessWidget {
  const ListObat({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NameObat()));
          },
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
              backgroundColor: MaterialStatePropertyAll(Color(0xFFF3FBFF)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))))),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(text)
            ],
          )),
    );
  }
}
