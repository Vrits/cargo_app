import 'package:cargo_app/pages/PickUp/pick_up_barang_form.dart';
import 'package:cargo_app/pages/PickUp/pick_up_form.dart';
import 'package:flutter/material.dart';

class PickUp extends StatelessWidget {
  const PickUp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Pick Up',
                  style: TextStyle(color: Colors.grey[200]),
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Drop Off',
                  style: TextStyle(color: Colors.grey[200]),
                )),
          ]),
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
                  child: Text('Selanjutnya',
                      style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                )
              ],
            )),
        body: TabBarView(children: [
          PickUpPage(context),
          PickUpPage(context),
        ]),
      ),
    );
  }

  Container PickUpPage(BuildContext context) {
    return Container(
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
                ButtonOrder('Masukkan Info Pengirim', 'Pengirim', Icons.outbox,
                    context, false),
                ButtonOrder('Masukkan Info Penerima', 'Penerima', Icons.inbox,
                    context, false),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              margin: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ButtonOrder('Masukkan Informasi Barang', 'Barang',
                  Icons.add_box, context, true)),
        ],
      ),
    );
  }

  TextButton ButtonOrder(String buttonText, String pageTitle,
      IconData buttonIcon, BuildContext context, bool isBarang) {
    Widget page = isBarang ? PickUpBarangForm() : PickUpForm(title: pageTitle);
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Icon(
              buttonIcon,
              color: Colors.grey[900],
              size: 28,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Text(
              buttonText,
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            )),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[900],
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
