import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/app_theme.dart';
import 'package:pinput/pinput.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final defultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: MyTextStyles.otpStyle,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
    );
    
    return Form(
      child: Pinput(
        closeKeyboardWhenCompleted: true,
        obscureText: true,
        length: 6,
        defaultPinTheme: defultPinTheme,
        focusedPinTheme: defultPinTheme.copyWith(
          decoration: defultPinTheme.decoration!.copyWith(
            border: Border.all(color: Colors.white),
          ),
        ),
        onCompleted: (pin) => debugPrint(pin),
      ),
    );
  }
}
