import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery/components/text_field/email_text_field.dart';
import 'package:grocery/components/text_field/password_text_field.dart';
import 'package:grocery/screens/auth/auth_sign_up.dart';

import '../../components/buttons/elevated_button.dart';
import '../../constants/image_strings.dart';
import '../../constants/langs/app_strings.dart';
import '../../constants/themes/app_theme.dart';
import '../../constants/themes/colors/app_colors.dart';
import '../../widgets/auth_widgets/app_bar.dart';
import '../../widgets/auth_widgets/back_button.dart';
import '../../widgets/auth_widgets/row_auth_password.dart';
import '../home_page.dart';
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
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height ,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  MyImages.auth2,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                CustomAppBar(
                  leading: const BackButtonWidget(
                    destinationPage: WelcomeScreen(),
                  ),
                  titleText: 'Welcome',
                ),
                const SizedBox(
                  height: 390,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
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
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text:  TextSpan(
                              children: [
                               const TextSpan(
                                  text: 'Don\'t have an account ? ',
                                  style: MyTextStyles.bodyText,
                                ),
                                TextSpan(
                              text: 'Sign up',
                              style: MyTextStyles.styleText1,
                              recognizer: TapGestureRecognizer()..onTap = () {
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
                    ],
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
