import 'package:flutter/material.dart';

import '../../constants/themes/app_theme.dart';

class AppBarPages extends StatelessWidget {
  const AppBarPages(
      {super.key, required this.titleText, required this.destinationPage});

  final String titleText;
  final Widget destinationPage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => destinationPage,
              ),
            );
          },
          icon: const Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
            size: 30,
          )),
      centerTitle: true,
      title: Text(
        titleText,
        style: MyTextStyles.titleStyle5,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.tune,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }
}
