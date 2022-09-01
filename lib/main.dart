import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
          scaffoldBackgroundColor: AppColor.whiteAsHeaven,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(color: Colors.white, fontSize: 18),
              primary: AppColor.glen,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
            ),
          )),
      home: const SplashView(),
    );
  }
}
