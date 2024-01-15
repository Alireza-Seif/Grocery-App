import 'package:flutter/material.dart';
import 'package:grocery/screens/splash/splash_1.dart';

import '../../components/buttons/auth_button.dart';
import '../../components/buttons/google_button.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../constants/themes/colors/app_colors.dart';
import '../../widgets/back_button.dart';
import '../splash/splash_4.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/auth1.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      BackButtonWidget(
                        destinationPage: SplashScreen4(),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        'Welcome',
                        style: MyTextStyles.titleStyle2,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 400,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                  decoration: const BoxDecoration(
                    color: AppColors.background2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Welcome',
                        style: MyTextStyles.titleStyle3,
                      ),
                      const Text(
                        AppString.forgotPasswordText,
                        style: MyTextStyles.bodyText,
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      GoogleSignInButton(),
                      const SizedBox(
                        height: 12,
                      ),
                      AuthButton(
                        onPressedCallback: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SplashScreen1(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account ?',
                              style: MyTextStyles.bodyText,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SplashScreen1(),
                                  ),
                                );
                              },
                              child: const Text('Login',style: MyTextStyles.styleText1),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
