import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/color/app_color.dart';
import 'package:online_groceries_app/product/widget/button/custom_button.dart';
import 'package:online_groceries_app/view/authentication/sign_up/view/sign_up_view.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  _OnBordingViewState createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/onbording.png",
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
                              color: AppColor.white,
                            ),
                        textAlign: TextAlign.center,
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
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      CustomButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpView(),
                                ),
                                (route) => false);
                          },
                          title: "Get Started"),
                      const Padding(padding: EdgeInsets.all(40)),
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
