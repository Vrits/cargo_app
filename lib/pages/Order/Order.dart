import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(onPressed: () {}, child: Text('semua')),
                TextButton(onPressed: () {}, child: Text('Menunggu Diproses')),
                TextButton(onPressed: () {}, child: Text('Dalam pengiriman')),
                TextButton(onPressed: () {}, child: Text('Diterima')),
                TextButton(onPressed: () {}, child: Text('Retur')),
                TextButton(onPressed: () {}, child: Text('Batal')),
              ],
            ),
          ),
          Column(
            children: [
              Text('Tidak Ada Data'),
              TextButton(onPressed: () {}, child: Text('Refresh')),
            ],
          )
        ],
      )),
    );
  }
}
