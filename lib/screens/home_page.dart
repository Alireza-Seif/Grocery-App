import 'package:flutter/material.dart';


import 'package:grocery/widgets/home_widgets/promo_slider.dart';

import '../widgets/home_widgets/categories.dart';
import '../widgets/home_widgets/search_bar.dart';

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
            child: const Center(
              child: Column(
                children: [
                  // searchbar
                  MySearchBar(),

                  // banner
                  MyPromoSlider(),

                  // Categories
                  SizedBox(
                    height: 10,
                  ),
                  Categories(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
