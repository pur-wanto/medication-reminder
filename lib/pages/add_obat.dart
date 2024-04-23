import 'package:flutter/material.dart';
import 'package:medication_reminder/widgets/list_obat.dart';

class AddObat extends StatelessWidget {
  const AddObat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  "Tambahkan Obat",
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
              Container(
                height: 5,
                width: 50,
                color: Colors.grey[300],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              "Pilih Jenis Obat",
              style: TextStyle(
                  fontFamily: 'Poppins500', fontSize: 16, color: Colors.black),
            ),
          ),
          const Wrap(
            runSpacing: 20,
            spacing: 15,
            children: [
              ListObat(text: "Kapsul", image: "assets/images/kapsul.png"),
              ListObat(text: "Tablet", image: "assets/images/tablet.png"),
              ListObat(text: "Inhaler", image: "assets/images/inhaler.png"),
              ListObat(text: "Cairan", image: "assets/images/cairan.png"),
              ListObat(text: "Suntikan", image: "assets/images/suntikan.png"),
              ListObat(text: "Tetes", image: "assets/images/obat-tetes.png"),
              ListObat(
                  text: "Tambalan", image: "assets/images/handsaplast.png"),
              ListObat(text: "Topikal", image: "assets/images/salep.png"),
              ListObat(
                  text: "Supositoria", image: "assets/images/suppository.png"),
            ],
          )
        ],
      ),
    );
  }
}
