import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/utill/color_resources.dart';
import 'package:todo/utill/dimensions.dart';
import 'package:todo/utill/images.dart';
import 'package:todo/utill/styles.dart';
import 'package:todo/view/home_page.dart';

class OnBoardingThree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorResources.WHITE,
        child: Column(
          children: [
            SizedBox(height: 250,),
            Center(child: Text("Onboarding 3")),

            SizedBox(height: 200,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(title: "Todo List", )));
              },
              child: Container(
                height: 45,
                width: 180,
                child: Center(child: Text("TODO List", style: TextStyle(color: ColorResources.WHITE, fontSize: 16, fontWeight: FontWeight.bold ),)),
                decoration: BoxDecoration(
                    color: ColorResources.COLOR_BLUE,
                    borderRadius: BorderRadius.circular(15)

                ),
              ),
            ),
          ],
        ),

/*
        Stack(
          children: [
           Positioned(child:  Padding(
               padding: EdgeInsets.only(left: 20 , right: 20, top: 5),
               child: Text("in google chrome devtools you can quickly get the decimal numbers for a hex-style color; just click on the tiny color rectangle in the styles sidebar;", style: LatoMedium.copyWith(color: ColorResources.BLACK),)
           ),
           top: 285,
             left: 50,
             right: 50,
           ),
            // SizedBox(height: 10,),
            Positioned(child: Image.asset(Images.logo, width: 90, height: 90,),
              top: 10,
              right: 30,),

            Positioned(child:  Center(
              child:  Image.asset(Images.on_board3_center, width: double.infinity,),
            ),
              bottom: -1,
              left: 0,
              right: 0,
            ),
         Positioned(child:  Align(
           alignment: Alignment.center,
           child: InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (_) => MyHomePage(title: 'Todo List',)));
             },
             child: Stack(
               clipBehavior: Clip.none,
               children: [
                 Container(
                   height: 45,
                   width: 180,
                   decoration: BoxDecoration(
                    color: ColorResources.COLOR_BLUE,
                     borderRadius: BorderRadius.circular(15)
                   ),
                 ),
               ],
             ),
           ),
         ),

                      bottom: 190,
                      left: 50,
                      right: 50,
                    //  top: 70,

                    ),


            */
/*Positioned(child: Container(
              width: double.infinity,
              child: Image.asset(Images.bottom_shape, width: double.infinity,),
            ),
            bottom: -15,
            left: -10,
            right: -10,)*//*


          ],
        )
*/
    );
  }
}
