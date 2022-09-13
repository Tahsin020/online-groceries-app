import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/project_padding.dart';
import 'package:online_groceries_app/product/widget/button/custom_button.dart';
import 'package:online_groceries_app/product/widget/textfield/email_text_field.dart';
import 'package:online_groceries_app/product/widget/textfield/password_text_field.dart';
import 'package:online_groceries_app/view/home/view/home_view.dart';

import '../../../../product/constant/image_enum.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String _forgotPassword = 'Forgot Password?';
  final String _signUp = "Singup";
  final String _haveAccountText = "Don’t have an account? ";
  final String _login = "Login";
  final String _description = "Enter your emails and password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const ProjectPadding.allLow(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const ProjectPadding.bottomLow(),
                child: Center(child: ImageEnums.carrot.carrotToImage),
              ),
              Text(
                _login,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              _giveSpace(context),
              Text(
                _description,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 40,
              ),
              EmailTextField(controller: _emailController),
              _giveSpace(context),
              PasswordTextField(controller: _passwordController),
              Align(
                alignment: Alignment.centerRight,
                child: _forgotPasswordButton(context),
              ),
              _giveSpace(context),
              CustomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ));
                  },
                  title: _login),
              _giveSpace(context),
              _haveAccountRichText(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _haveAccountRichText(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontSize: 14, color: Theme.of(context).colorScheme.primary),
              children: [
            TextSpan(text: _haveAccountText),
            TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {},
                text: _signUp,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor)),
          ])),
    );
  }

  TextButton _forgotPasswordButton(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          _forgotPassword,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.primary),
        ));
  }

  SizedBox _giveSpace(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );
  }
}
