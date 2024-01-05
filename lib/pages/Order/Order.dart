import 'package:cargo_app/pages/Order/OrderItem.dart';
import 'package:cargo_app/pages/Order/OderList.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  String status = 'Semua';

  List<String> buttonName = [
    'Semua',
    'Menunggu Diproses',
    'Dalam Pengiriman',
    'Diterima',
    'Retur',
    'Batal'
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> filteredItems = itemsList
        .where((e) => (status == 'Semua') || (e['status'] == '$status'))
        .map((e) => OrderItem(
            status: e['status']!,
            id: e['id']!,
            from: e['from']!,
            date_estimation: e['date_estimation']!,
            to: e['to']!))
        .toList();

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
                          children: filteredItems))
            ],
          )),
    );
  }

  Container buttonCategory(String name) {
    String countItems;
    bool isSelected = name == status;
    if (name == 'Semua') {
      countItems = itemsList.length.toString();
    } else {
      countItems =
          itemsList.where((e) => (e['status'] == '$name')).length.toString();
    }

    return Container(
      margin: EdgeInsets.only(right: 6),
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(isSelected
                  ? Color.fromARGB(30, 33, 149, 243)
                  : const Color.fromRGBO(238, 238, 238, 1)),
              side: MaterialStateProperty.all(
                  BorderSide(color: Colors.blue, width: 2))),
          onPressed: () {
            setState(() {
              status = '$name';
            });
          },
          child: Text(
            '$name($countItems)',
            style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
          )),
    );
  }
}
