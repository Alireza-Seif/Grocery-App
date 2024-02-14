import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = true;
  bool _isTextFieldFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObscure,
      style: const TextStyle(fontSize: 15),
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        label: const Text('Password'),
        labelStyle: TextStyle(
          color:
              _isTextFieldFocused ? AppColors.primary : AppColors.text2,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Icon(
            Icons.lock_outline,
            size: 30,
            color:
                _isTextFieldFocused ? AppColors.primary : AppColors.text2,
          ),
        ),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            iconSize: 30,
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off,
                color: _isTextFieldFocused
                    ? AppColors.primary
                    : AppColors.text2),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
      onTap: () {
        setState(() {
          _isTextFieldFocused = true;
        });
      },
      onEditingComplete: () {
        setState(() {
          _isTextFieldFocused = false;
        });
      },
    );
  }
}
