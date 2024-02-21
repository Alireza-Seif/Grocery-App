import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/constants/themes/app_theme.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

import '../../constants/langs/app_strings.dart';
import '../../widgets/profile/build_top.dart';
import '../../widgets/profile/profile_menu.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppColors.background2,
      child: Column(
        children: [
          // top
          buildTop(),

          // middle
          const Text(
            AppString.tProfileHeading,
            style: MyTextStyles.styleText1,
            textAlign: TextAlign.center,
          ),

          const Text(
            AppString.tProfileSubHeading,
            style: MyTextStyles.styleText2,
            textAlign: TextAlign.center,
          ),

          // menu
          ProfileMenuWidget(
            title: 'About me',
            icon: Icons.account_circle,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'My Orders',
            icon: Icons.inventory,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'My Favorites',
            icon: Icons.favorite_border,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'My Address',
            icon: Icons.location_on,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'Credit Cards',
            icon: Icons.credit_card,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'Transactions',
            icon: Icons.monetization_on,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'Notifications',
            icon: Icons.notifications_none,
            onPress: () {},
          ),
          ProfileMenuWidget(
            title: 'Sign out',
            icon: Icons.replay_circle_filled,
            onPress: () {},
          ),
        ],
      ),
    ));
  }
}
