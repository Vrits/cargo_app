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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Harga Barang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextBox('Asal', 'Masukkan asal'),
            _buildTextBox('Tujuan', 'Masukkan tujuan'),
            _buildBeratBarang(),
            _buildDimensi(),
            _buildCariButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextBox(String label, String hintText) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
      ),
    );
  }

  Widget _buildBeratBarang() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Berat Barang (kg)',
              hintText: beratBarang.toString(),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                beratBarang = double.parse(value);
              });
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              beratBarang += 1.0;
            });
          },
          child: Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (beratBarang > 1.0) {
                beratBarang -= 1.0;
              }
            });
          },
          child: Icon(Icons.remove),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              beratBarang = 1.0;
            });
          },
          child: Text('Reset'),
        ),
      ],
    );
  }

  Widget _buildDimensi() {
    return Column(
      children: [
        _buildTextBox('Panjang (cm)', 'Masukkan panjang'),
        _buildTextBox('Lebar (cm)', 'Masukkan lebar'),
        _buildTextBox('Tinggi (cm)', 'Masukkan tinggi'),
      ],
    );
  }

  Widget _buildCariButton() {
    return ElevatedButton(
      onPressed: () {
        // Logika untuk mengakumulasi harga barang
        double harga = beratBarang * (panjang + lebar + tinggi);
        // Tambahkan logika lainnya sesuai kebutuhan
        print('Harga Barang: $harga');
      },
      child: Text('Cari'),
    );
  }
}
