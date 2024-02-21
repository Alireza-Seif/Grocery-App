import 'package:flutter/material.dart';

import 'build_cover_image.dart';

const double converHeight = 145;

const double profileHeightl = 114;

Widget buildTop() {
  const top = converHeight - profileHeightl / 2;
  const bottom = profileHeightl / 2 + 10;

  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        color: Colors.white,
        width: double.infinity,
        height: converHeight,
        margin: const EdgeInsets.only(bottom: bottom),
      ),
      const Positioned(
        top: top,
        child: BuildCoverImage(),
      ),
    ],
  );
}
