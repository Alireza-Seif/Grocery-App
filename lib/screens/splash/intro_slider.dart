import 'package:flutter/material.dart';
import 'package:grocery/components/buttons/elevated_button.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';
import 'package:grocery/screens/auth/auth_wdlcome.dart';
import 'package:grocery/screens/splash/splash_1.dart';
import 'package:grocery/screens/splash/splash_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'splash_2.dart';
import 'splash_4.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({super.key});

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            allowImplicitScrolling: true,
            controller: _pageController,
            children: const [
              SplashScreen1(),
              SplashScreen2(),
              SplashScreen3(),
              SplashScreen4(),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    effect: const SlideEffect(
                      activeDotColor: AppColors.primaryDark,
                      dotColor: AppColors.primaryGrey,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                    onDotClicked: (index) => _pageController.animateToPage(index,
                        duration: const Duration(microseconds: 300),
                        curve: Curves.easeInOut),
                  ),
                ),
              ),
                CustomElevatedButton(
            buttonText: 'Get started',
            onPressedCallback: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomeScreen(),
                ),
              );
            },
          ),
        const SizedBox(height: 45,)
            ],
          ),
        ],
      ),
    );
  }
}
