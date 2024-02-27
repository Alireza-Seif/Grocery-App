import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery/components/buttons/elevated_button.dart';
import 'package:grocery/components/text_field/email_text_field.dart';
import 'package:grocery/constants/langs/app_strings.dart';
import 'package:grocery/constants/themes/app_theme.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';
import 'package:grocery/screens/auth/auth_login.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Password Recovery',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Forgot Password',
              style: MyTextStyles.titleStyle7,
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(AppString.forgotPasswordText),
            const SizedBox(
              height: 44,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: EmailTextField(),
            ),
            const SizedBox(
              height: 13,
            ),
            CustomElevatedButton(
              onPressedCallback: () {},
              buttonText: 'Send Link',
            )
          ],
        ),
      )),
    );
  }
}
