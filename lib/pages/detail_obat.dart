import 'package:flutter/material.dart';

class DetailObat extends StatefulWidget {
  const DetailObat({super.key});

  @override
  State<DetailObat> createState() => _DetailObatState();
}

class _DetailObatState extends State<DetailObat> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;

  bool? yes = false;
  bool? no = false;
  String ukuran = '';

  void nameUkuran(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        "Pilih Satuan",
                        style: TextStyle(
                            fontFamily: 'Poppins500',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ukuran = 'mg';
                        },
                        child: const Text(
                          "mg",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ukuran = 'ml';
                        },
                        child: const Text(
                          "ml",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ukuran = 'g';
                        },
                        child: const Text(
                          "g",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ukuran = 'UI';
                        },
                        child: const Text(
                          "UI",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ukuran = 'mcg';
                        },
                        child: const Text(
                          "mcg",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          ukuran = 'mcg/ml';
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "mcg/ml",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ukuran = 'mg/ml';
                        },
                        child: const Text(
                          "mg/ml",
                          style: TextStyle(
                              fontFamily: 'Poppins400',
                              fontSize: 14,
                              color: Colors.black),
                        )),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      "Rincian Obat",
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
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        shape: const CircleBorder(),
                        value: isChecked1,
                        onChanged: (value) => {
                          setState(() {
                            isChecked1 = true;
                            isChecked2 = false;
                            isChecked3 = false;
                          })
                        },
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sebelum"),
                          Text("Makan"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        shape: const CircleBorder(),
                        value: isChecked2,
                        onChanged: (value) => {
                          setState(() {
                            isChecked1 = false;
                            isChecked2 = true;
                            isChecked3 = false;
                          })
                        },
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dengan"),
                          Text("Makan"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.blue,
                        shape: const CircleBorder(),
                        value: isChecked3,
                        onChanged: (value) => {
                          setState(() {
                            isChecked1 = false;
                            isChecked2 = false;
                            isChecked3 = true;
                          })
                        },
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sesudah"),
                          Text("Makan"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          suffixText: ukuran,
                          labelText: 'Ukuran',
                          filled: true,
                          fillColor: const Color(0xFFF3FBFF),
                          icon: const Icon(
                            Icons.power,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          nameUkuran(context);
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.blue,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Catatan',
                    filled: true,
                    fillColor: Color(0xFFF3FBFF),
                    icon: Icon(
                      Icons.note_add,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    const Text("Ingatkan saya ketika saya\nkehabisan stok"),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.blue,
                          shape: const CircleBorder(),
                          value: yes,
                          onChanged: (value) => {
                            setState(() {
                              yes = true;
                              no = false;
                            })
                          },
                        ),
                        const Text("Ya"),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.blue,
                          shape: const CircleBorder(),
                          value: no,
                          onChanged: (value) => {
                            setState(() {
                              yes = false;
                              no = true;
                            })
                          },
                        ),
                        const Text("Tidak"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    const Text('Stok Terkini :'),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xFFF3FBFF),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('Kapsul'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 130,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
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
