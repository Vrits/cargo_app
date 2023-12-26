import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(35, 0, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(8)),
                // color: Colors.black,
              ),
              padding: EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Lacak Resi',
                        style: TextStyle(
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.qr_code_2,
                    color: Color.fromRGBO(245, 245, 245, 1),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(35, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  // color: Colors.black,
                ),
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Color.fromRGBO(245, 245, 245, 1),
                ),
              ))
        ],
      ),
    );
  }
}
