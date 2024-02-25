import 'package:flutter/material.dart';
import 'package:grocery/screens/home/home_page.dart';
import 'package:grocery/screens/user/profile_setting_screen.dart';
import 'package:grocery/widgets/btn_nav_bar/my_bnb.dart';
import 'package:grocery/widgets/btn_nav_bar/my_fab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController controller = PageController();
  List screens = [
    const HomPage(),
    const ProfileSettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return screens[index];
        },
      ),
      floatingActionButton: const MyFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: MyBNB(controller: controller),
    );
  }
}

