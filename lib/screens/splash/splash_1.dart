import 'package:big_cart/components/buttons/elevated_button.dart';
import 'package:big_cart/constants/langs/app_strings.dart';
import 'package:big_cart/constants/themes/app_theme.dart';
import 'package:big_cart/screens/splash/splash_2.dart';
import 'package:big_cart/widgets/row_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash/splash1.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
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
                const SizedBox(height: 14),
                const Text(
                  AppString.splashScreenText,
                  style: MyTextStyles.bodyText,
                ),
                const SizedBox(height: 479),
                RowIndicator(currentIndex: currentIndex),
                const SizedBox(height: 32),
                CustomElevatedButton(
                  onPressedCallback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen2()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
