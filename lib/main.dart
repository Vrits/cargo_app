import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {'/home': (context) => Home()},
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green[700],
          // currentIndex: _currentIndex,
          // onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Order Saya',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Lacak',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          // Edit Disini
        ]),
      ),
    );
  }
}
