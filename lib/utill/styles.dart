import 'package:flutter/material.dart';
import 'color_resources.dart';
import 'dimensions.dart';


const LatoLight = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w300,
);

const LatoRegular = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w400,
);

const LatoMedium = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w500,
);

const LatoBlack = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w500,
);

const LatoSemiBold = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w600,
);


const LatoBold = TextStyle(
  fontFamily: 'Lato',
  fontSize: Dimensions.FONT_SIZE_DEFAULT,
  fontWeight: FontWeight.w700,
);
// 76194473851894
textFieldDecoration(){
  return BoxDecoration(
    color: ColorResources.TEXT_FIELD_BG,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: ColorResources.COLOR_PRIMARY, width: 2),
  );
}