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
          // currentIndex: _currentIndex,
          // onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
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
