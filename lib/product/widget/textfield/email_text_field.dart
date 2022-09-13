import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  bool _emailContains = false;
  void _changeContains(bool value) {
    setState(() {
      _emailContains = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      keyboardAppearance: Brightness.light,
      cursorColor: Theme.of(context).primaryColor,
      style: Theme.of(context).textTheme.headline5,
      onChanged: (value) {
        if (value.contains('@') && value.contains(".com")) {
          _changeContains(true);
        } else {
          _changeContains(false);
        }
      },
      decoration: InputDecoration(suffixIcon: _emailContainsValue, labelText: 'Email'),
    );
  }

  Widget? get _emailContainsValue => _emailContains
      ? Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        )
      : null;
}
