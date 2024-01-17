import 'package:flutter/material.dart';

class PickUpBarangForm extends StatelessWidget {
  const PickUpBarangForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barang'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            TextInput('Nama Barang', 'Masukkan nama barang'),
            TextInput('Jenis Barang', 'Masukkan jenis barang'),
            Row(
              children: [
                Expanded(child: TextInput('Jumlah', '0')),
                SizedBox(
                  width: 8,
                ),
                Expanded(child: TextInput('Berat(kg)', '0')),
              ],
            ),
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
          Text(inputText),
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
