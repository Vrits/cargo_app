import 'package:cargo_app/pages/Home/four_icons.dart';
import 'package:cargo_app/pages/Home/one_icons.dart';
import 'package:cargo_app/pages/Home/order_promo.dart';
import 'package:cargo_app/pages/Home/promo_list.dart';
import 'package:cargo_app/pages/Home/promo_login.dart';
import 'package:cargo_app/pages/Home/search_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final bool isLoggedIn;
  final Function(int) onItemTapped;

  const Home({super.key, required this.onItemTapped, required this.isLoggedIn});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  !widget.isLoggedIn
                      ? PromoLogin(
                          onItemTapped: widget.onItemTapped,
                        )
                      : SizedBox(
                          height: 8,
                        ),
                  FourIcons(
                    onItemTapped: widget.onItemTapped,
                  ),
                  OneIcons(onItemTapped: widget.onItemTapped),
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
    );
  }
}
