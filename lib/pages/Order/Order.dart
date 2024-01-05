import 'package:cargo_app/pages/Order/OrderItem.dart';
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

  List<Map<String, String>> itemsList = [
    {
      'status': 'Sedang Dikirim',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Menunggu Diproses',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Menunggu Diproses',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Diterima',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Sedang Dikirim',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Diterima',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Retur',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Sedang Dikirim',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Retur',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Diterima',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
    {
      'status': 'Sedang Dikirim',
      'id': '1302-21398273-1238',
      'from': 'JL.Buntu, Jakarta',
      'to': 'JL.G.Soebardjo, Banjarmasin',
      'date_estimation': '10 Januari 2023'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Saya'),
      ),
      body: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),

                padding: EdgeInsets.symmetric(horizontal: 8),
                // margin: EdgeInsets.all(value),
                height: 45,
                child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    scrollDirection: Axis.horizontal,
                    children:
                        buttonName.map((e) => buttonCategory(e)).toList()),
              ),
              Expanded(
                  child:
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Icon(Icons.bolt, size: 100),
                      //     Text('Tidak Ada Data'),
                      //     TextButton(onPressed: () {}, child: Text('Refresh')),
                      //   ],
                      // ),
                      ListView(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          children: itemsList
                              .map((e) => OrderItem(
                                  status: e['status']!,
                                  id: e['id']!,
                                  from: e['from']!,
                                  date_estimation: e['date_estimation']!,
                                  to: e['to']!))
                              .toList()))
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
