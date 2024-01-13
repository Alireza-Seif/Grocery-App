import 'package:big_cart/constants/themes/app_theme.dart';
import 'package:big_cart/screens/splash/splash_4.dart';
import 'package:big_cart/widgets/back_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/auth1.png'),
                    fit: BoxFit.cover),
              ),
              child:   const Center(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [SizedBox(height: 25),
                    Row(
                      children: [BackButtonWidget(destinationPage: SplashScreen4()),SizedBox(width: 110,),
                        Text(
                          'Welcome',
                          style: MyTextStyles.titel1,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }
}
