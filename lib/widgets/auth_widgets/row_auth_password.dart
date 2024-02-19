import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

import '../../constants/themes/app_theme.dart';


class RowRemember extends StatefulWidget {
  RowRemember({super.key});

  @override
  State<RowRemember> createState() => _RowRememberState();
}

class _RowRememberState extends State<RowRemember> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Transform.scale(scale: 0.5,
          child: CupertinoSwitch(activeColor: AppColors.primary,
            value: _lights,
            onChanged: (bool value) {
              setState(() {
                _lights = value;
              });
            },
          ),
        ),
        const Text(
          'Remember me',
          style: MyTextStyles.bodyText,
        ),
        const SizedBox(
          width: 65,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot password',
            style: TextStyle(fontSize: 15),
          ),
        )
      ],
    );
  }
}
