import 'package:flutter/material.dart';

class FourIcons extends StatelessWidget {
  const FourIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pickup');
                },
                child: Column(children: [
                  Icon(Icons.car_crash, size: 40),
                  Text('Pick Up')
                ]),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Column(children: [
                  Icon(Icons.price_change_rounded, size: 40),
                  Text('Cek Harga')
                ]),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Column(children: [
                  Icon(Icons.location_on, size: 40),
                  Text('Lacak')
                ]),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Column(children: [
                  Icon(Icons.assignment, size: 40),
                  Text('Order Saya')
                ]),
              )),
        ],
      ),
    );
  }
}
