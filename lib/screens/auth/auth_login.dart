import 'package:flutter/material.dart';
import 'package:grocery/components/icon/icon_view.dart';
import 'package:grocery/components/text_field/email_text_field.dart';
import 'package:grocery/constants/app_icons.dart';
import 'package:grocery/screens/auth/auth_wdlcome.dart';
import 'package:grocery/screens/splash/splash_1.dart';

import '../../components/buttons/auth_button.dart';
import '../../components/buttons/elevated_button.dart';
import '../../components/text_field/password_text_field.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../constants/themes/colors/app_colors.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/back_button.dart';
import '../splash/splash_4.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/auth/auth2.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              CustomAppBar(
                leading: const BackButtonWidget(
                  destinationPage: WelcomeScreen(),
                ),
                titleText: 'Welcome',
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
                        'Welcome back !',
                        style: MyTextStyles.titleStyle3,
                      ),
                      const Text(
                        AppString.signInText,
                        style: MyTextStyles.bodyText,
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      const EmailTextField(),
                      const SizedBox(
                        height: 5,
                      ),
                      const PasswordField(),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomElevatedButton(
                        buttonText: 'Login',
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              child: const Text('Login',
                                  style: MyTextStyles.styleText1),
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
