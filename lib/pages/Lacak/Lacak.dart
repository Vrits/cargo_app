import 'package:cargo_app/pages/Lacak/maps.dart';
import 'package:flutter/material.dart';

class Lacak extends StatefulWidget {
  const Lacak({super.key});

  @override
  State<Lacak> createState() => _LacakState();
}

class _LacakState extends State<Lacak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test')),
      body: Maps(),
    );
  }
}
