import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:todo/controller/onboarding_controller.dart';
import 'package:todo/utill/color_resources.dart';
import 'package:todo/utill/styles.dart';
import '../home_page.dart';
import 'onBoarding_1.dart';
import 'onBoarding_2.dart';
import 'onBoarding_3.dart';

class OnBoardingScreen extends StatelessWidget {
  final Color indicatorColor;
  final Color selectedIndicatorColor;

  late OnBoardingController _boardingController= Get.put(OnBoardingController());

  OnBoardingScreen({
    this.indicatorColor = Colors.grey,
    this.selectedIndicatorColor = Colors.black,
  });


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Stack(clipBehavior: Clip.none, children: [
          Positioned(child: Container(
            width: double.infinity,
            height: double.infinity,
            child: PageView(
              onPageChanged: (index) { _boardingController.changeSelectIndex(index);
              },
              children: [
                OnBoardingOne(),
                OnBoardingTwo(),
                OnBoardingThree()
              ],
            ),
          )),
          Positioned( left: 50,
              right: 50,
              bottom: 30,
              child: Padding( padding: EdgeInsets.zero,
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: _pageIndicators(_boardingController.onBoardingList, context),
                ),
              )),
          Positioned(
              right: 50,
              bottom: 10,
              child: skipBtn(context))
        ],
        ),
      ),
    );
  }


  List<Widget> _pageIndicators(var onBoardingList, BuildContext context) {
    List<Container> _indicators = [];
    for (int i = 0; i < 3; i++) {
      _indicators.add(
        Container(
          width: i == _boardingController.selectedIndex ? 20 : 10,
          height: 7,
          margin: EdgeInsets.only(right: 3,left: 3),
          decoration: BoxDecoration(
            color: i == _boardingController.selectedIndex ? ColorResources.BLACK : Colors.grey[500],
            borderRadius: i == _boardingController.selectedIndex ? BorderRadius.circular(50) : BorderRadius.circular(35),
          ),
        ),
      );
    }
    return _indicators;
  }





Widget skipBtn(BuildContext context) {
    return TextButton(
      onPressed: () =>
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "Todo List",))),
      child: Text("Skip",
        style: LatoBold.copyWith(fontSize: 16, color: ColorResources.BLACK),),

    );
  }
}
