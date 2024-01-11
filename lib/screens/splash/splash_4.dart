import 'package:big_cart/components/buttons/elevated_button.dart';
import 'package:big_cart/constants/langs/app_strings.dart';
import 'package:big_cart/constants/themes/app_theme.dart';
import 'package:big_cart/main.dart';
import 'package:big_cart/widgets/row_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
   int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash4.png'),
                fit: BoxFit.cover),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  ''' Get Discounts 
On All Products''',
                  style: MyTextStyles.titleStyle,
                ),
                const SizedBox(height: 17,),
                const Text(
                  AppString.splashScreenText,
                  style: MyTextStyles.bodyText,
                ),
                const SizedBox(height: 511),
                RowIndicator(currentIndex: currentIndex + 3), 
                const SizedBox(height: 32),
                CustomElevatedButton(onPressedCallback: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomPage()),
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
