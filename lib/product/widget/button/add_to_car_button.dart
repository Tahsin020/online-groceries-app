import 'package:flutter/material.dart';

class AddToCarButton extends StatefulWidget {
  const AddToCarButton({Key? key, this.onTap}) : super(key: key);
  final VoidCallback? onTap;

  @override
  _AddToCarButtonState createState() => _AddToCarButtonState();
}

class _AddToCarButtonState extends State<AddToCarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(17), color: Theme.of(context).primaryColor),
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
