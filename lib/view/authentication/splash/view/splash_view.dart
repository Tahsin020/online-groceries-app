import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/color/app_color.dart';
import 'package:online_groceries_app/product/widget/button/custom_button.dart';
import 'package:online_groceries_app/view/authentication/onbording/view/onbording_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const OnBordingView(),
            ),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.glen,
      body: Stack(
        children: [
          Center(
            child: Image.asset("assets/images/splash.png"),
          )
        ],
      ),
    );
  }
}
