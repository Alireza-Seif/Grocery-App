import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/widgets/profile/build_top.dart';

import '../../constants/image_strings.dart';

class BuildCoverImage extends StatelessWidget {
  const BuildCoverImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: profileHeightl / 2,
      backgroundImage: AssetImage(MyImages.user0),
    );
  }
}