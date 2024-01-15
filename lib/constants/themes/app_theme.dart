import 'package:flutter/material.dart';

import 'colors/app_colors.dart';

class MyTextStyles {
  static const TextStyle titleStyle1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 30,
    fontFamily: 'Poppins'
  );

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
    fontWeight: FontWeight.w600,
    fontSize: 25,
    fontFamily: 'Poppins'
  );

  static const TextStyle styleText1 = TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                );
}
