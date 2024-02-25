import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class MyBNB extends StatefulWidget {
  final PageController controller;

  const MyBNB({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<MyBNB> createState() => _MyBNBState();
}

class _MyBNBState extends State<MyBNB> {
  int currentIndex = 0;

  void nextPage(int index) {
    setState(() {
      currentIndex = index;
    });
    widget.controller.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => nextPage(0),
            icon: Icon(
              color: currentIndex == 0 ? Colors.black : AppColors.text2,
              Icons.home_outlined,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 73,
          ),
          IconButton(
            onPressed: () => nextPage(1),
            icon: Icon(
              color: currentIndex == 1 ? Colors.black : AppColors.text2,
              Icons.person_outline,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 73,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              color: currentIndex == 2 ? Colors.black : AppColors.text2,
              Icons.favorite_outline,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
