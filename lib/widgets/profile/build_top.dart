import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

const double converHeight = 145;

const double profileHeightl = 114;

Widget buildTop() {
  const top = converHeight - profileHeightl / 2;

  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        color: Colors.white,
        width: double.infinity,
        height: converHeight,
      ),
      Positioned(
        top: top,
        child: CircleAvatar(
          radius: profileHeightl / 2,
          backgroundImage: AssetImage(MyImages.user0),
        ),
      )
    ],
  );
}
