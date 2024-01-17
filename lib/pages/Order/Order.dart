import 'package:cargo_app/pages/Order/OrderItem.dart';
import 'package:cargo_app/pages/Order/OrderList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  void filterId(String id) {
    setState(() {
      filterList(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> filteredItems = itemsList
        .where((e) => (status == 'Semua') || (e['status'] == '$status'))
        .map((e) => OrderItem(
              status: e['status']!,
              id: e['id']!,
              from: e['from']!,
              date_estimation: e['date_estimation']!,
              to: e['to']!,
              filterList: filterId,
            ))
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
                  child: filteredItems.length < 1
                      ? ItemIsEmpty()
                      : ListView(
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

class ItemIsEmpty extends StatelessWidget {
  const ItemIsEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/stock-out.svg',
          width: 100,
          height: 100,
          colorFilter: ColorFilter.mode(
              const Color.fromRGBO(30, 136, 229, 1), BlendMode.srcIn),
        ),
        Text('Tidak ada paket.'),
      ],
    );
  }
}
