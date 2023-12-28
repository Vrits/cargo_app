import 'package:cargo_app/pages/Home/four_icons.dart';
import 'package:cargo_app/pages/Home/one_icons.dart';
import 'package:cargo_app/pages/Home/order_promo.dart';
import 'package:cargo_app/pages/Home/promo_list.dart';
import 'package:cargo_app/pages/Home/promo_login.dart';
import 'package:cargo_app/pages/Home/search_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[700],
          // currentIndex: _currentIndex,
          // onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Order Saya',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Lacak',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
            ),
          ]),
      body: SafeArea(
        child: Container(
          color: Colors.blue[600],
          child: Column(children: [
            SearchItem(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                width: double.maxFinite,
                child: ListView(
                  children: [
                    PromoLogin(),
                    FourIcons(),
                    OneIcons(),
                    PromoList(),
                    SizedBox(
                      height: 16,
                    ),
                    OrderPromo(),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
