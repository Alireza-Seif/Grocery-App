import 'package:flutter/material.dart';
import 'package:grocery/widgets/profile/build_top.dart';

import '../../constants/image_strings.dart';

class BuildCoverImage extends StatelessWidget {
  const BuildCoverImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
        ),
        CircleAvatar(
          radius: profileHeightl / 2,
          backgroundImage: AssetImage(MyImages.user0),
        ),
        const Positioned(
          left: 75,
          top: 90,
          child: CircleAvatar(
            backgroundColor: Color(0xFF28B446),
            radius: 13,
            child: Icon(
              Icons.camera_alt,
              size: 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
