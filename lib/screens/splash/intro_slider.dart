import 'package:flutter/material.dart';
import 'package:grocery/screens/splash/splash_1.dart';
import 'package:grocery/screens/splash/splash_3.dart';

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
      body: PageView(
        controller: _pageController,
        children: const [
          SplashScreen1(),
          SplashScreen2(),
          SplashScreen3(),
          SplashScreen4(),
        ],
      ),
    );
  }
}
