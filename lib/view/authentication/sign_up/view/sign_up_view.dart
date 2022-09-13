import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/image_enum.dart';
import 'package:online_groceries_app/product/constant/project_padding.dart';
import 'package:online_groceries_app/product/widget/button/custom_button.dart';
import 'package:online_groceries_app/product/widget/textfield/email_text_field.dart';
import 'package:online_groceries_app/product/widget/textfield/password_text_field.dart';
import 'package:online_groceries_app/view/authentication/login/view/login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String _signUp = "Sign Up";
  final String _description = "Enter your credentials to continue";

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
                _signUp,
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
              _userNameTextField(context),
              _giveSpace(context),
              EmailTextField(controller: _emailController),
              _giveSpace(context),
              PasswordTextField(controller: _passwordController),
              _giveSpace(context),
              _agreeText(context),
              _giveSpace(context),
              _signUpButton(),
              _giveSpace(context),
              _loginRichText(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginRichText(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              children: [
            const TextSpan(text: "Already have an account? "),
            TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ));
                  },
                text: 'Login',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor))
          ])),
    );
  }

  Widget _signUpButton() => CustomButton(onPressed: () {}, title: _signUp);

  Widget _agreeText(BuildContext context) {
    return RichText(
        text: TextSpan(style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 14), children: [
      const TextSpan(text: "By continuing you agree to our "),
      TextSpan(
          recognizer: TapGestureRecognizer()..onTap = () {},
          text: "Terms of Service",
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor, fontSize: 14)),
      const TextSpan(text: " and"),
      TextSpan(
          recognizer: TapGestureRecognizer()..onTap = () {},
          text: " Privacy Policy",
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).primaryColor, fontSize: 14)),
    ]));
  }

  SizedBox _giveSpace(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );
  }

  Widget _userNameTextField(BuildContext context) {
    return TextField(
      controller: _userNameController,
      keyboardType: TextInputType.name,
      keyboardAppearance: Brightness.light,
      cursorColor: Theme.of(context).primaryColor,
      style: Theme.of(context).textTheme.headline5,
      decoration: const InputDecoration(
        labelText: "Username",
      ),
    );
  }
}
