import 'package:cargo_app/pages/Harga/harga.dart';
import 'package:cargo_app/pages/Home/navbar.dart';
import 'package:cargo_app/pages/Order/Order.dart';
import 'package:cargo_app/pages/PickUp/pick_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
          // color: Colors.grey[200],
          iconTheme: IconThemeData(color: Colors.grey[200]),
          titleTextStyle: TextStyle(color: Colors.grey[200], fontSize: 20),
          backgroundColor: Colors.blue[600]),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(50, 25, 118, 210)),
        foregroundColor: MaterialStatePropertyAll<Color>(
            const Color.fromRGBO(30, 136, 229, 1)),
        shape: MaterialStatePropertyAll<ContinuousRectangleBorder>(
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12))),
      )),
    ),
    initialRoute: '/order',
    routes: {
      '/home': (context) => NavBar(),
      '/pickup': (context) => PickUp(),
      '/harga': (context) => Harga(),
      '/order': (context) => Order(),
    },
  ));
}
