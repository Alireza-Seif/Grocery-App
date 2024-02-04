import 'package:flutter/material.dart';
import 'package:grocery/widgets/auth_widgets/app_bar.dart';
import 'package:grocery/widgets/auth_widgets/back_button.dart';

import '../../screens/auth/auth_wdlcome.dart';

class UpSide extends StatelessWidget {
  const UpSide({super.key, required this.imgAsset});

  final String imgAsset;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 1.7,
          color: Colors.white,
          child: Image.asset(
            imgAsset,
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            scale: 8,
          ),
        ),
        CustomAppBar(
          leading: const BackButtonWidget(
            destinationPage: WelcomeScreen(),
          ),
          titleText: 'Welcome',
        ),
      ],
    );
  }
}
