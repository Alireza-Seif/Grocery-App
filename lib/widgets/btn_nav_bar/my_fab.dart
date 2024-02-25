import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 70,
      width: 70,
      child: FloatingActionButton(
        elevation: 0,
        shape:  RoundedRectangleBorder(
          side: const BorderSide(width: 5, color: Colors.white ),
        borderRadius: BorderRadius.circular(100)),
        backgroundColor: AppColors.primaryDark,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
          size: 25,
        ),
        onPressed: () {},
      ),
    );
  }
}
