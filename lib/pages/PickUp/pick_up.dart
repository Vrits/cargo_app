import 'package:flutter/material.dart';

class PickUp extends StatelessWidget {
  const PickUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Total'),
                  Text('-'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child:
                    Text('Selanjutnya', style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              )
            ],
          )),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              margin: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.outbox),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Masukkan Informasi Pengirim'),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.inbox),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Masukkan Informasi Penerima'),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              margin: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row(
                children: [
                  Icon(Icons.add_box),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan Informasi Barang'),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
