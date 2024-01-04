import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<String> buttonName = [
    'Semua',
    'Menunggu Diproses',
    'Dalam pengiriman',
    'Diterima',
    'Retur',
    'Batal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Saya'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.symmetric(horizontal: 8),
            // margin: EdgeInsets.all(value),
            height: 45,
            child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                scrollDirection: Axis.horizontal,
                children: buttonName.map((e) => buttonCategory(e)).toList()),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bolt, size: 100),
                Text('Tidak Ada Data'),
                TextButton(onPressed: () {}, child: Text('Refresh')),
              ],
            ),
          )
        ],
      )),
    );
  }

  Container buttonCategory(String name) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      child: TextButton(
          style: ButtonStyle(
              side: MaterialStateProperty.all(
                  BorderSide(color: Colors.blue, width: 2))),
          onPressed: () {},
          child: Text('$name')),
    );
  }
}
