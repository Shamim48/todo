import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/utill/color_resources.dart';
import 'package:todo/utill/images.dart';
import 'package:todo/utill/styles.dart';

class OnBoardingOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorResources.WHITE,
      child:  Center(child: Text("Onboarding 1"))
      /*Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [

              Positioned(child: Container(
                width: double.infinity,
                child: Image.asset(Images.logo, width: 70, height: 70,),
              ),
                top: 70,
                left: 50,
                right: 50,),

            ],),
          SizedBox(height: 20,),
          Center(
            child: Text("Welcome",  style: LatoBold.copyWith(fontSize: 28, color: ColorResources.YELLOW),),
          ),
          // SizedBox(height: 10,),
          Expanded(child: Center(
            child: Image.asset(Images.on_boar1_center, width: double.infinity-40,),
          ))
        ],
      )*/
    );
  }
}
