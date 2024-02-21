import 'package:flutter/material.dart';

import '../../constants/themes/app_theme.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: const Color(0XFF28B446),
      ),
      title: Text(
        title,
        style: MyTextStyles.titleStyle6,
      ),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}