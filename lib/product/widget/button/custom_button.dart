import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.onPressed, required this.title, this.icon})
      : super(key: key);
  final VoidCallback onPressed;
  final String title;
  final Widget? icon;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontSize: 18),
              ),
            ],
          )),
    );
  }
}
