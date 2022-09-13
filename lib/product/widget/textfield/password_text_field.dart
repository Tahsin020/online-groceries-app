import 'package:flutter/material.dart';
class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
   bool _obscureText = true;

  void _changeObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      keyboardAppearance: Brightness.light,
      keyboardType: TextInputType.visiblePassword,
      cursorColor: Theme.of(context).primaryColor,
      style: Theme.of(context).textTheme.headline5,
      decoration: InputDecoration(
          labelText: "Password",
          suffixIcon: IconButton(
            onPressed: _changeObscureText,
            icon: _obscureTextValueIcon,
          )),
    );
  }
    Widget get _obscureTextValueIcon => _obscureText
      ? Icon(
          Icons.visibility_off,
          color: Theme.of(context).colorScheme.surface,
        )
      : Icon(
          Icons.visibility,
          color: Theme.of(context).colorScheme.surface,
        );

}