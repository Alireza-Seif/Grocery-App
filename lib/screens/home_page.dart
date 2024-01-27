import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery/constants/image_strings.dart';

import '../widgets/home_widgets/search_bar.dart';
import '../widgets/images/my_rounded_image.dart';

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
          child: Center(
            child: Column(
              children: [
                const MySearchBar(),
                Column(
                  children: [
                    CarouselSlider(
                        items: [
                          MyRoundedImage(
                            imageUrl: MyImages.promoBanner1,
                          ),MyRoundedImage(
                            imageUrl: MyImages.promoBanner2,
                          ),MyRoundedImage(
                            imageUrl: MyImages.promoBanner3,
                          ),MyRoundedImage(
                            imageUrl: MyImages.promoBanner4,
                          ),
                        ],
                        options: CarouselOptions(
                          viewportFraction: 1,
                        )),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
