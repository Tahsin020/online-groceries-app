import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Account View",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
