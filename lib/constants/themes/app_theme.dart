import 'package:flutter/material.dart';

import 'colors/app_colors.dart';

class MyTextStyles {
  
  // body text styles

  static const TextStyle styleBanner = TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );

  //title text styles

  static const TextStyle titleStyle1 = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 30, fontFamily: 'Poppins');

  static const TextStyle bodyText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: AppColors.text2,
  );

  static const TextStyle titleStyle2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Colors.white,
  );

  static const TextStyle titleStyle3 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 25, fontFamily: 'Poppins');

  static const TextStyle styleText1 = TextStyle(
    color: Colors.black,
    fontSize: 15.0,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleText2 = TextStyle(
    color: AppColors.text2,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle titleStyle4 = TextStyle(
    color: AppColors.text2,
    fontSize: 10,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle titleStyle5 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Colors.black,
  );
  
  static const TextStyle titleStyle6 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
    color: Colors.black,
  );
  static const TextStyle titleStyle7 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: Colors.black,
  );

  // OTP

     static const TextStyle otpStyle =TextStyle(
        fontSize: 20,
        color: Colors.black,fontWeight: FontWeight.w500,fontFamily: 'Poppins'
      );
}
