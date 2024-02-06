import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.splash3), fit: BoxFit.fill),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '''Buy Premium
Quality Fruits''',
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
