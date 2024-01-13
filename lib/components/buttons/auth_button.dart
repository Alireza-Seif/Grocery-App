import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../constants/themes/colors/app_colors.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressedCallback;

  const AuthButton({Key? key, required this.onPressedCallback})
      : super(key: key);

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
              AppColors.primary, // AppColors.primary,
            ],
          ),
          boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(108, 197, 29, 0.25),
            blurRadius: 9,
            offset: Offset(0, 10),
          ),
        ],
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 380.0,
            maxHeight: 60.0,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle_outlined,size: 26,),
              SizedBox(
                width: 60,
              ),
              Text(
                'Create an account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
