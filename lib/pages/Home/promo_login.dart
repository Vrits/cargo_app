import 'package:flutter/material.dart';

class PromoLogin extends StatelessWidget {
  final Function(int) onItemTapped;

  const PromoLogin({super.key, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ]),
      child: Row(
        children: [
          Flexible(
            child: Text(
                'Login sekarang untuk mendapatkan bonus yang sudah menanti kamu!'),
          ),
          SizedBox(
            width: 4,
          ),
          TextButton(
            onPressed: () {
              onItemTapped(3);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.grey[200]),
            ),
          )
        ],
      ),
    );
  }
}
