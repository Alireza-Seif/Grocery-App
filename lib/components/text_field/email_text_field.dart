import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  bool isTextFieldFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 15),
      cursorColor: AppColors.primary,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Email Address',
        labelStyle: TextStyle(
          color: isTextFieldFocused ? AppColors.primary : AppColors.text2,
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Icon(
            Icons.email,
            size: 30,
            color:
                isTextFieldFocused ? AppColors.primary : AppColors.text2,
          ),
        ),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
      ),
      onTap: () {
        setState(() {
          isTextFieldFocused = true;
        });
      },
      onEditingComplete: () {
        setState(() {
          isTextFieldFocused = false;
        });
      },
    );
  }
}
