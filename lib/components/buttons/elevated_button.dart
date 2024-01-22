import 'package:flutter/material.dart';

import '../../constants/themes/colors/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.onPressedCallback, required this.buttonText});

  final VoidCallback onPressedCallback;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedCallback,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.92, 0.0),
            end: Alignment(0.0, 1.0),
            colors: [
              AppColors.primaryDark,
              AppColors.primary,
            ],
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 380.0,
            maxHeight: 60.0,
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
