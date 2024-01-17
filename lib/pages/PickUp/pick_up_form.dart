import 'package:flutter/material.dart';

class PickUpForm extends StatelessWidget {
  final String title;
  const PickUpForm({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            TextInput('Nama', 'Masukkan nama $title'),
            TextInput('Nomor Telepon', '089xxxxxxxxxx'),
            TextInput('Asal', 'Masukkan Asal'),
            TextInput('Alamat Lengkap', 'Masukkan alamat $title'),
            TextInput('Kode Pos', 'Kode Pos'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      const Color.fromRGBO(30, 136, 229, 1))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Selesai',
                style: TextStyle(color: Colors.grey[200]),
              ))),
    );
  }

  Widget TextInput(String inputText, String hintText) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(inputText),
              Text(
                '*',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(4)),
            child: TextField(
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: hintText),
            ),
          ),
        ],
      ),
    );
  }
}
