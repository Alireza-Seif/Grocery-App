import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class MyFloattingActionBtton extends StatelessWidget {
  const MyFloattingActionBtton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 62,
      width: 62,
      child: Material(
        elevation: 10,
        shadowColor: AppColors.primaryDark,
        shape: const CircleBorder(),
        child: FloatingActionButton(
          elevation: 0,
          shape:  RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.white ),
          borderRadius: BorderRadius.circular(100)),
          backgroundColor: AppColors.primaryDark,
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
