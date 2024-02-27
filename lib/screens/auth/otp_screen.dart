import 'package:flutter/material.dart';
import 'package:grocery/components/buttons/elevated_button.dart';
import 'package:grocery/constants/langs/app_strings.dart';
import 'package:grocery/constants/themes/app_theme.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';
import 'package:grocery/screens/auth/auth_login.dart';
import 'package:grocery/widgets/auth_widgets/otp_form.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              'Verify your number',
              style: MyTextStyles.titleStyle7,
            ),
            const SizedBox(
              height: 13,
            ),
            const Text('Enter your OTP code below'),
            const SizedBox(
              height: 67,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: OtpForm(),
               ),
            const SizedBox(
              height: 13,
            ),
            CustomElevatedButton(
              onPressedCallback: () {},
              buttonText: 'Next',
            )
          ],
        ),
      )),
    );

  }
}