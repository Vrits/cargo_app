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
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(35, 0, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(8)),
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
                      // Container(
                      //   width: 200,
                      //   height: 25,
                      //   child: TextField(
                      //     style: TextStyle(color: Colors.grey[200]),
                      //     cursorColor: Colors.white,
                      //     // showCursor: false,
                      //     // cursorHeight: 0,
                      //     // scrollPadding: EdgeInsets.only(top: 20),

                      //     decoration: InputDecoration(
                      //         contentPadding: EdgeInsets.only(top: 30),
                      //         border: InputBorder.none,
                      //         hintText: 'Lacak Paket',
                      //         hintStyle: TextStyle(color: Colors.grey[300])),
                      //   ),
                      // ),
                      Text(
                        'Lacak Paket',
                        style: TextStyle(color: Colors.grey[200]),
                      )
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
              flex: 2,
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
