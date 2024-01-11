import 'package:big_cart/components/buttons/elevated_button.dart';
import 'package:big_cart/constants/langs/app_strings.dart';
import 'package:big_cart/constants/themes/app_theme.dart';
import 'package:big_cart/screens/splash/splash_3.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash2.png'),
                fit: BoxFit.cover),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  '''   Buy Quality 
Dairy Products''',
                  style: MyTextStyles.titleStyle,
                ),
                const SizedBox(height: 17,),
                const Text(
                  AppString.splashScreenText,
                  style: MyTextStyles.bodyText,
                ),
                const SizedBox(height: 531),
                CustomElevatedButton(onPressedCallback: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SplashScreen3()),
                );
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
