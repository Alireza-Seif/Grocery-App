import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  
  final dynamic currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  const EdgeInsets.fromLTRB(0, 59, 0, 0),
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyImages.splash2),
              fit: BoxFit.fill),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '''   Buy Quality 
Dairy Products''',
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
    );
  }
}
