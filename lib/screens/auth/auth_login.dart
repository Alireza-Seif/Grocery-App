import 'package:flutter/material.dart';
import 'package:grocery/components/text_field/email_text_field.dart';
import 'package:grocery/components/text_field/password_text_field.dart';
import 'package:grocery/main.dart';
import 'package:grocery/screens/auth/auth_sign_up.dart';

import '../../components/buttons/elevated_button.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../constants/themes/colors/app_colors.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/back_button.dart';
import 'auth_wdlcome.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(16.0),
        ),
        // Add other theme configurations as needed
      ),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/auth/auth2.png'),
              fit: BoxFit.cover,
            ),
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
                  height: 370,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 30, 16, 20),
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
                                builder: (context) => const HomPage(),
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
                                      builder: (context) =>  const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign up',
                                  style: MyTextStyles.styleText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
