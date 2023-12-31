import 'package:cargo_app/pages/Home/home.dart';
import 'package:cargo_app/pages/Lacak/lacak.dart';
import 'package:cargo_app/pages/Akun/login_page.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _HomeState();
}

class _HomeState extends State<NavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Home(onItemTapped: _onItemTapped),
      Home(onItemTapped: _onItemTapped),
      Lacak(),
      LoginPage()
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue[700],
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'Order Saya',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Lacak',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Akun',
              ),
            ]),
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ));
  }
}
