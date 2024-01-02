import 'package:cargo_app/pages/Lacak/maps.dart';
import 'package:flutter/material.dart';

class Lacak extends StatefulWidget {
  const Lacak({super.key});

  @override
  State<Lacak> createState() => _LacakState();
}

class _LacakState extends State<Lacak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lacak')),
      body: Maps(),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        // height: 20,
        child: Row(
          children: [
            Text('Resi Paket : '),
            Expanded(child: TextField()),
            SizedBox(
              width: 12,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(30, 136, 229, 1))),
                onPressed: () {},
                child: Text(
                  'Cari',
                  style: TextStyle(color: Colors.grey[200]),
                ))
          ],
        ),
      )),
    );
  }
}
