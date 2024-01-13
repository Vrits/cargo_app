import 'package:flutter/material.dart';

class LoggedIn extends StatelessWidget {
  final String username;
  final Function(bool) loginHandler;
  const LoggedIn(
      {super.key, required this.loginHandler, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 40,
                  backgroundColor: const Color.fromARGB(35, 30, 136, 229),
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('test@test.com'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            AccountButton('Detail Akun'),
            // Text('Detail Akun'),
            AccountButton('Riwayat Pesanan'),
            AccountButton('Ganti Username'),
            AccountButton('Ganti Kata Sandi'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(211, 47, 47, 1)),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red)),
                      onPressed: () {},
                      child: Text(
                        'Delete Account',
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(20, 0, 0, 0)),
                        shape: MaterialStateProperty.all(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12), // Set the border radius
                            side: BorderSide(
                                color: Colors.red,
                                width: 1), // Set the border color and width
                          ),
                        ),
                      ),
                      onPressed: () {
                        loginHandler(false);
                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  Container AccountButton(String e) {
    return Container(
      // color: Colors.grey[300],
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(30, 0, 0, 0),
          offset: Offset(0, 2),
          blurRadius: 4,
          spreadRadius: 1,
        ),
      ]),
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  const Color.fromRGBO(238, 238, 238, 1))),
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  e,
                  style: TextStyle(color: Colors.blue[900]),
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.blue[900],
                )
              ],
            ),
          )),
    );
  }
}
