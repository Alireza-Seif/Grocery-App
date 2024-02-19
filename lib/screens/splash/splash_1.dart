import 'package:flutter/material.dart';
import 'package:grocery/constants/langs/app_strings.dart';

import '../../constants/image_strings.dart';
import '../../constants/themes/app_theme.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  final dynamic currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyImages.splash1), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Welcome to',
                style: MyTextStyles.titleStyle1,
              ),
              Image(
                image: AssetImage(MyImages.bigCart),
              ),
              const SizedBox(height: 14),
              const Text(
                AppString.splashScreenText,
                style: MyTextStyles.bodyText,
              ),
              const SizedBox(height: 479),
            ],
          ),
        ),
      ),
    );
  }
}
