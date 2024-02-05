import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/components/text_field/email_text_field.dart';
import 'package:grocery/components/text_field/password_text_field.dart';
import 'package:grocery/screens/auth/auth_sign_up.dart';
import 'package:grocery/screens/auth/auth_wdlcome.dart';
import 'package:grocery/widgets/auth_widgets/up_ide.dart';

import '../../components/buttons/elevated_button.dart';
import '../../constants/image_strings.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../constants/themes/colors/app_colors.dart';

import '../../widgets/auth_widgets/row_auth_password.dart';
import '../home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(16.0),
        ),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              UpSide(imgAsset: MyImages.auth2,destinationPage: const WelcomeScreen()),
              Container(
                margin: const EdgeInsets.only(top: 450),
                padding: const EdgeInsets.fromLTRB(16, 30, 16, 10),
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
                      height: 26,
                    ),
                    const EmailTextField(),
                    const SizedBox(
                      height: 5,
                    ),
                    const PasswordField(),
                    const SizedBox(
                      height: 9,
                    ),
                    const RowRemember(),
                    const SizedBox(
                      height: 9,
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Don\'t have an account ? ',
                                style: MyTextStyles.bodyText,
                              ),
                              TextSpan(
                                text: 'Sign up',
                                style: MyTextStyles.styleText1,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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
