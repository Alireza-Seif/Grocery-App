import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/components/text_field/email_text_field.dart';
import 'package:grocery/components/text_field/password_text_field.dart';
import 'package:grocery/components/text_field/phone_text_field.dart';
import 'package:grocery/constants/langs/app_strings.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';
import 'package:grocery/screens/auth/auth_login.dart';
import 'package:grocery/screens/auth/auth_wdlcome.dart';
import 'package:grocery/screens/home/home_page.dart';
import 'package:grocery/widgets/auth_widgets/up_ide.dart';

import '../../components/buttons/elevated_button.dart';
import '../../constants/image_strings.dart';
import '../../constants/themes/app_theme.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              UpSide(
                imgAsset: MyImages.auth3,
                destinationPage: const WelcomeScreen(),
              ),
              Container(
                margin: const EdgeInsets.only(top: 440),
                padding: const EdgeInsets.fromLTRB(16, 15, 16, 10),
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
                      'Create account',
                      style: MyTextStyles.titleStyle3,
                    ),
                    const Text(
                      AppString.signUpText,
                      style: MyTextStyles.bodyText,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const EmailTextField(),
                    const SizedBox(
                      height: 5,
                    ),
                    const PhoneTextField(),
                    const SizedBox(
                      height: 5,
                    ),
                    const PasswordField(),
                    const SizedBox(
                      height: 9,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    CustomElevatedButton(
                      buttonText: 'Signup',
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Already have an account ? ',
                                style: MyTextStyles.bodyText,
                              ),
                              TextSpan(
                                text: 'Login',
                                style: MyTextStyles.styleText1,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
