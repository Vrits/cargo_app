import 'package:flutter/material.dart';

class Harga extends StatefulWidget {
  @override
  _HargaState createState() => _HargaState();
}

class _HargaState extends State<Harga> {
  double beratBarang = 1.0;
  double panjang = 0.0;
  double lebar = 0.0;
  double tinggi = 0.0;
  double jarakDestinasi = 0.0;
  String hasilOngkir = '';

  // Fungsi untuk menghitung ongkir
  double hitungOngkir() {
    // Logika penghitungan ongkir berdasarkan berat, dimensi, dan jarak
    double biayaPengiriman = (beratBarang * 5000) +
        (panjang * lebar * tinggi * 0.01) +
        (jarakDestinasi * 1000);
    return biayaPengiriman;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kalkulator Harga Barang',
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextBox('Asal', TextInputType.text),
            _buildTextBox('Tujuan', TextInputType.text),
            // _buildTextBox(
            //     'Perkiraan Jarak Destinasi (km)', TextInputType.number),
            _buildBeratBarang(),
            _buildDimensi(),
            _buildCariButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextBox(String label, TextInputType type) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(bottom: 4), child: Text(label)),
          TextField(
            // style: TextStyle(color: Colors.white), // Warna teks input
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // labelText: label,
              // hintText: hintText,
              // labelStyle: TextStyle(color: Colors.white), // Warna label
              // hintStyle: TextStyle(color: Colors.white70), // Warna hint
            ),
            keyboardType: type,
            onChanged: (value) {
              setState(() {
                if (double.tryParse(value) != null) {
                  jarakDestinasi = double.parse(value);
                }
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBeratBarang() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Berat Barang (kg)'),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                // style: TextStyle(color: Colors.white), // Warna teks input
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  // labelText: 'Berat Barang (kg)',
                  hintText: beratBarang.toString(),
                  // labelStyle: TextStyle(color: Colors.white), // Warna label
                  // hintStyle: TextStyle(color: Colors.white70), // Warna hint
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    beratBarang = double.parse(value);
                  });
                },
              ),
            ),
            SizedBox(width: 8),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(30, 136, 229, 1))),
              onPressed: () {
                setState(() {
                  beratBarang += 0.5;
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.grey[200],
              ),
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.blue, // Warna tombol
              // ),
            ),
            SizedBox(width: 8),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(30, 136, 229, 1))),
              onPressed: () {
                setState(() {
                  if (beratBarang > 0.5) {
                    beratBarang -= 0.5;
                  }
                });
              },
              child: Icon(Icons.remove, color: Colors.grey[200]),
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.blue, // Warna tombol
              // ),
            ),
            SizedBox(width: 8),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(30, 136, 229, 1))),
              onPressed: () {
                setState(() {
                  beratBarang = 1.0;
                });
              },
              child: Text('Reset', style: TextStyle(color: Colors.grey[200])),
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.blue, // Warna tombol
              // ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDimensi() {
    return Row(
      children: [
        Expanded(child: _buildTextBox('Jarak (km)', TextInputType.number)),
        Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: _buildTextBox('Panjang (cm)', TextInputType.number))),
        Expanded(
            child: Container(
                margin: EdgeInsets.only(right: 4),
                child: _buildTextBox('Lebar (cm)', TextInputType.number))),
        Expanded(child: _buildTextBox('Tinggi (cm)', TextInputType.number)),
      ],
    );
  }

  Widget _buildCariButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromRGBO(30, 136, 229, 1))),
          onPressed: () {
            // Logika untuk mengakumulasi harga barang
            double harga = hitungOngkir();
            setState(() {
              hasilOngkir = (harga == 0)
                  ? 'Gratis Ongkir'
                  : 'Biaya Pengiriman: ${harga.toString()} Rupiah';
            });
          },
          child:
              Text('Hitung Ongkir', style: TextStyle(color: Colors.grey[200])),
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.blue, // Warna tombol
          // ),
        ),
        SizedBox(height: 16),
        Text(
          hasilOngkir,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            // color: Colors.white
          ),
          // Warna teks hasil
        ),
      ],
    );
  }
}
