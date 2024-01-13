import 'package:cargo_app/pages/Akun/logged_in.dart';
import 'package:cargo_app/pages/Akun/login_page.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  final bool isLoggedIn;
  final Function(bool) loginHandler;

  Account({super.key, required this.isLoggedIn, required this.loginHandler});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String username = '';

  void changeUsername(String e) {
    setState(() {
      username = e;
    });
  }

  // bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return widget.isLoggedIn
        ? LoggedIn(
            loginHandler: widget.loginHandler,
            username: username,
          )
        : LoginPage(
            loginHandler: widget.loginHandler,
            changeUsername: changeUsername,
          );
  }
}
