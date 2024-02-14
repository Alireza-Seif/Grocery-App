import 'package:flutter/material.dart';
import '../../constants/themes/colors/app_colors.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key}) : super(key: key);

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  bool _isTextFieldFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 15),
      autofocus: false,
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        labelText: 'Phone number',
        labelStyle: TextStyle(
          color: _isTextFieldFocused ? AppColors.primary : AppColors.text2,
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Icon(
            Icons.phone,
            color: _isTextFieldFocused ? AppColors.primary : AppColors.text2,
            size: 30,
          ),
        ),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
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
