import 'package:flutter/material.dart';

import 'build_cover_image.dart';

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
      const Positioned(
        top: top,
        child: BuildCoverImage(),
      )
    ],
  );
}


