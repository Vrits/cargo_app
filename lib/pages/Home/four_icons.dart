import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FourIcons extends StatelessWidget {
  final Function(int) onItemTapped;

  const FourIcons({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pickup');
                },
                child: Column(children: [
                  SvgPicture.asset(
                    'assets/truck.svg',
                    width: 40,
                    height: 40,
                    colorFilter: ColorFilter.mode(
                        const Color.fromRGBO(30, 136, 229, 1), BlendMode.srcIn),
                  ),
                  Text('Pick Up')
                ]),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/harga');
                },
                child: Column(children: [
                  SvgPicture.asset(
                    'assets/dollar.svg',
                    width: 40,
                    height: 40,
                    colorFilter: ColorFilter.mode(
                        const Color.fromRGBO(30, 136, 229, 1), BlendMode.srcIn),
                  ),
                  Text('Cek Harga')
                ]),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  onItemTapped(2);
                },
                child: Column(children: [
                  Icon(Icons.location_on, size: 40),
                  Text('Lacak')
                ]),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Column(children: [
                  Icon(Icons.assignment, size: 40),
                  Text('Order Saya')
                ]),
              )),
        ],
      ),
    );
  }
}
