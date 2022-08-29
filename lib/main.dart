import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/color/app_color.dart';
import 'package:online_groceries_app/view/authentication/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.whiteAsHeaven,

      ),
      home: const SplashView(),
    );
  }
}
