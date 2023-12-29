import 'package:cargo_app/pages/Home/navbar.dart';
import 'package:cargo_app/pages/PickUp/pick_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll<Color>(
            const Color.fromRGBO(30, 136, 229, 1)),
        shape: MaterialStatePropertyAll<ContinuousRectangleBorder>(
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12))),
      )),
    ),
    initialRoute: '/home',
    routes: {
      '/home': (context) => NavBar(),
      '/pickup': (context) => PickUp(),
    },
  ));
}
