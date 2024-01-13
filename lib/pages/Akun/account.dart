import 'package:cargo_app/pages/Akun/logged_in.dart';
import 'package:cargo_app/pages/Akun/login_page.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isLoggedIn = true;
  String username = 'SanDisk';

  void loginHandler(bool status) {
    setState(() {
      isLoggedIn = status;
    });
  }

  void changeUsername(String user) {
    setState(() {
      username = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoggedIn
        ? LoggedIn(
            loginHandler: loginHandler,
            username: username,
          )
        : LoginPage(
            loginHandler: loginHandler,
            changeUsername: changeUsername,
          );
  }
}
