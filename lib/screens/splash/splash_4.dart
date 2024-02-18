import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
  final dynamic currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.splash4), fit: BoxFit.fill),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ''' Get Discounts 
On All Products''',
                  style: MyTextStyles.titleStyle1,
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  AppString.splashScreenText,
                  style: MyTextStyles.bodyText,
                ),
                SizedBox(height: 479),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
