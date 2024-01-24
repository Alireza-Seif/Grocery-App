import 'package:flutter/material.dart';
import 'package:grocery/screens/auth/auth_wdlcome.dart';
import '../../components/buttons/elevated_button.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../widgets/row_indicator.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
   final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash/splash3.png'),
                fit: BoxFit.cover),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  '''Buy Premium
Quality Fruits''',
                  style: MyTextStyles.titleStyle1,
                ),
                const SizedBox(height: 17,),
                const Text(
                  AppString.splashScreenText,
                  style: MyTextStyles.bodyText,
                ),
                const SizedBox(height: 479),
                RowIndicator(currentIndex: currentIndex + 2),  
                const SizedBox(height: 32),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
