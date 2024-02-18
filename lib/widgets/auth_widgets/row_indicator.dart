import 'package:flutter/material.dart';

import '../../constants/themes/colors/app_colors.dart';

class RowIndicator extends StatelessWidget {
  final currentIndex;

  const RowIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            radius: 4,
            backgroundColor: index == currentIndex ? AppColors.primaryDark : AppColors.primaryGrey,
          ),
        ),
      ),
    );
  }
}
