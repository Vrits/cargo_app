import 'package:flutter/material.dart';

class OneIcons extends StatelessWidget {
  const OneIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Column(
                    children: [Icon(Icons.person, size: 40), Text('Akun')]),
              )),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 4,
            ),
          )
        ],
      ),
    );
  }
}
