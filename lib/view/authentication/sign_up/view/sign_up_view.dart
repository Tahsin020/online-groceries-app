import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/color/app_color.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.emptiness,
      body: Center(
        child: Text("SignUp", style: Theme.of(context).textTheme.headline5,),
      ),
    );
  }
}