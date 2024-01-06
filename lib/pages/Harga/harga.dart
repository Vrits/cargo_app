import 'package:flutter/material.dart';

class Harga extends StatefulWidget {
  @override
  _HargaState createState() => _HargaState();
}

class _HargaState extends State<Harga> {
  double beratBarang = 1.0;
  Map<String, double> ukuranBarang = {
    'panjang': 1.0,
    'lebar': 1.0,
    'tinggi': 1.0,
    'jarak': 1.0,
  };

  String hasilOngkir = 'Biaya Pengiriman: -';

  // Fungsi untuk menghitung ongkir
  double hitungOngkir() {
    // Logika penghitungan ongkir berdasarkan berat, dimensi, dan jarak
    double biayaPengiriman = (beratBarang * 5000) +
        (ukuranBarang['panjang']! *
            ukuranBarang['lebar']! *
            ukuranBarang['tinggi']! *
            0.01) +
        (ukuranBarang['jarak']! * 1000);
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
          children: [
            _buildTextBox('Asal', TextInputType.text, ''),
            _buildTextBox('Tujuan', TextInputType.text, ''),
            _buildBeratBarang(),
            _buildDimensi(),
            _buildCariButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextBox(String label, TextInputType type, String ukuran) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(bottom: 4), child: Text(label)),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            keyboardType: type,
            onChanged: (value) {
              setState(() {
                if ((double.tryParse(value) != null) && (ukuran != '')) {
                  ukuranBarang['$ukuran'] = double.parse(value);
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
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDimensi() {
    return Row(
      children: [
        Expanded(
            child: _buildTextBox('Jarak (km)', TextInputType.number, 'jarak')),
        Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: _buildTextBox(
                    'Panjang (cm)', TextInputType.number, 'panjang'))),
        Expanded(
            child: Container(
                margin: EdgeInsets.only(right: 4),
                child: _buildTextBox(
                    'Lebar (cm)', TextInputType.number, 'lebar'))),
        Expanded(
            child:
                _buildTextBox('Tinggi (cm)', TextInputType.number, 'tinggi')),
      ],
    );
  }

  Widget _buildCariButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            hasilOngkir,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              // color: Colors.white
            ),
            // Warna teks hasil
          ),
        ),
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
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
