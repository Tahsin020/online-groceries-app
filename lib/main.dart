import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        primaryColor: const Color(0xff53B175),
        colorScheme: const ColorScheme(
          error: Colors.red,
          onError: Colors.redAccent,
          surface: Color(0xff7c7c7c),
          onSurface: Colors.grey,
          background: Colors.white,
          onBackground: Color(0xFFFCFCFC),
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Color(0xffb3b3b3),
          onSecondary: Color(0xfff2f3f2),
        ),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color(0xFFFCFCFC),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(color: Colors.white, fontSize: 18),
            primary: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
          ),
        ),
        textTheme: const TextTheme(
            subtitle1: TextStyle(
              color: Color(0xff7c7c7c),
              fontSize: 16,
            ),
            subtitle2: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
            )),
      ),
      home: const SplashView(),
    );
  }
}
