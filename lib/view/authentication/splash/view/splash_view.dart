import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/color/app_color.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash.png",
            isAntiAlias: true,
            fit: BoxFit.none,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/carrot.png"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        "Welcome",
                        style: Theme.of(context).textTheme.headline3?.copyWith(
                              color: Colors.white,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "to our store ",
                        style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        "Ger your groceries in as fast as one hour",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: const Color(0xffb3fcfcfc), fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: AppColor.glen,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
                            ),
                            child: Text(
                              "Get Started",
                              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontSize: 18),
                            )),
                      ),
                      const Padding(padding: EdgeInsets.all(40))
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
