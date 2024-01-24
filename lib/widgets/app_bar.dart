import 'package:flutter/material.dart';

import '../constants/themes/app_theme.dart';


class CustomAppBar extends AppBar {
CustomAppBar({
    Key? key,
    String titleText = '',
    Widget? leading,
    
  }) : super(
          key: key,
          title: Text(
            titleText,
            style: MyTextStyles.titleStyle2
          ),
          leading: leading,
          elevation: 4.0,
          centerTitle: true,
          backgroundColor: Colors.transparent
        );
}