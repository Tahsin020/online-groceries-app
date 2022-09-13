import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/image_enum.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _emailContains = false;

  void _changeContains(bool value) {
    setState(() {
      _emailContains = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Center(child: ImageEnums.colors_carrot.toImage),
              ),
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "Enter your credentials to continue",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _userNameController,
                keyboardType: TextInputType.name,
                keyboardAppearance: Brightness.light,
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  keyboardAppearance: Brightness.light,
                  onChanged: (value) {
                    if (value.contains('@') && value.contains(".com")) {
                      _changeContains(true);
                    } else {
                      _changeContains(false);
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: _emailContains
                          ? Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : null,
                      labelText: "Email",
                      labelStyle: Theme.of(context).textTheme.subtitle1)),
              TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: Theme.of(context).textTheme.subtitle1,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
