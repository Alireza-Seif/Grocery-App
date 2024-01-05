import 'package:big_cart/components/buttons/elevated_button.dart';
import 'package:big_cart/constants/langs/app_strings.dart';
import 'package:big_cart/constants/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 30),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash1.png'),
                fit: BoxFit.cover),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to',
                  style: MyTextStyles.titleStyle,
                ),
                const Image(
                  image: AssetImage('assets/images/bigCart1.png'),
                ),
                const Text(
                  AppString.splashScreenText,
                  style: MyTextStyles.bodyText,
                ),
                const SizedBox(height: 525,),
                CustomElevatedButton(onPressedCallback: () {
                  
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
