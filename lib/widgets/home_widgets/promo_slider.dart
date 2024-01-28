import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery/constants/image_strings.dart';
import 'package:grocery/widgets/images/my_rounded_image.dart';
import 'package:get/get.dart';

import '../../constants/themes/colors/app_colors.dart';
import '../images/my_circular_container.dart';

class MyPromoSlider extends StatefulWidget {
  const MyPromoSlider({super.key});

  @override
  State<MyPromoSlider> createState() => _MyPromoSliderState();
}

class _MyPromoSliderState extends State<MyPromoSlider> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: [
            MyRoundedImage(
              imageUrl: MyImages.promoBanner1,
            ),
            MyRoundedImage(
              imageUrl: MyImages.promoBanner2,
            ),
            MyRoundedImage(
              imageUrl: MyImages.promoBanner3,
            ),
            MyRoundedImage(
              imageUrl: MyImages.promoBanner4,
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        Obx(
          () => Row(
            children: [
              for (int i = 0; i < 4; i++)
                MyCircularContainer(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(right: 6),
                  backgorundColor: controller.carousalCurrentIndex.value == i
                      ? AppColors.primary
                      : Colors.black,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
