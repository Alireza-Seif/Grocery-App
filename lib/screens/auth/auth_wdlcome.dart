import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/screens/auth/auth_login.dart';
import 'package:grocery/widgets/auth_widgets/up_side.dart';

import '../../components/buttons/auth_button.dart';
import '../../components/buttons/google_button.dart';
import '../../constants/image_strings.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../constants/themes/colors/app_colors.dart';
import '../splash/intro_slider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
              UpSide(
                imgAsset: MyImages.auth1,
                destinationPage: const IntroSliderPage(),
              ),
              Container(
                margin: const EdgeInsets.only(top: 495),
                padding: const EdgeInsets.fromLTRB(16, 31, 16, 10),
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
                    const GoogleSignInButton(),
                    const SizedBox(
                      height: 12,
                    ),
                    AuthButton(
                      onPressedCallback: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
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
                    const SizedBox(
                      height: 39,
                    )
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
