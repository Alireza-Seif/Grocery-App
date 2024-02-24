import 'package:flutter/material.dart';

import 'package:grocery/widgets/btn_nav_bar/my_fab.dart';
import 'package:grocery/widgets/btn_nav_bar/my_bnb.dart';

import 'package:grocery/widgets/home_widgets/promo_slider.dart';

import '../../constants/themes/app_theme.dart';

import '../../widgets/home_widgets/categories.dart';
import '../../widgets/home_widgets/search_bar.dart';
import '../user/profile_setting_screen.dart';

class HomPage extends StatefulWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  // searchbar
                  const MySearchBar(),

                  // banner
                  const MyPromoSlider(),

                  // Categories
                  const SizedBox(
                    height: 10,
                  ),
                  const Categories(),

                  // products
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Featured products',
                            style: MyTextStyles.styleBanner,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProfileSettingScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: const MyFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: MyBNB(),
    );
  }
}
