import 'package:flutter/material.dart';

import 'package:grocery/widgets/home_widgets/promo_slider.dart';

import '../widgets/home_widgets/search_bar.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

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
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: Colors.white,
          child: const Center(
            child: Column(
              children: [
                MySearchBar(),
                MyPromoSlider(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
