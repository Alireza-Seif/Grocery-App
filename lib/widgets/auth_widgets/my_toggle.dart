import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class CustomToggle extends StatefulWidget {
  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isToggled = !isToggled;
        });
      },
      child: Container(
        width: 29,
        height: 17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isToggled ? Colors.green : Colors.transparent,
          border: Border.all(color: AppColors.text2, width: 1),
          
        ),
        child: Align(
          alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: AppColors.text2, width: 1.5),
              
            ),
          ),
        ),
      ),
    );
  }
}
