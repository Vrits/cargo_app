import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String status;
  final String id;
  final String from;
  final String to;
  final String date_estimation;
  final Function(String) filterList;

  OrderItem({
    super.key,
    required this.status,
    required this.id,
    required this.from,
    required this.date_estimation,
    required this.to,
    required this.filterList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(100, 189, 189, 189),
              offset: Offset(0, 2),
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ]),
      child: Row(
        children: [
          Icon(
            Icons.card_giftcard,
            size: 50,
            color: Colors.blue[600],
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('No Resi $id'),
                Text(
                  'Dari $from Menuju $to',
                ),
                Text('Estimasi $date_estimation'),
              ],
            ),
          ),
          TextButton(
              onPressed: () {
                filterList(id);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Icon(
                    Icons.delete_outline,
                    size: 32,
                  )))
        ],
      ),
    );
  }
}
