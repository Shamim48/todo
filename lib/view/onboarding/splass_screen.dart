import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/utill/color_resources.dart';
import 'package:todo/utill/images.dart';
import 'package:todo/view/home_page.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _route();
  }

  void _route() {
    Timer(Duration(seconds: 2), () async {
      if (false) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MyHomePage(title: "Todo List",)));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => OnBoardingScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            Color(0xffFDDA72),
            Color(0xffC19C31),
            Color(0xffD2B45C),
            Color(0xffC19C31),
            Color(0xffFDDA72),
          ],
        ),
      ),
      child: Center(
        child: Text("Wellcome", style: TextStyle(color: ColorResources.WHITE, fontSize: 22),) /*Image.asset(Images.logo, height: 200, width: 200,)*/,
      ),

    );
  }
}
