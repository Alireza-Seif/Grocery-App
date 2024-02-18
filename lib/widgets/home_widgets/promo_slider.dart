import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery/constants/image_strings.dart';
import 'package:grocery/constants/themes/app_theme.dart';
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

    return Stack(
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
        Positioned(
          bottom: 22,
          left: 17,
          right: 0,
          child: Obx(
            () => Row(
              children: [
                for (final i = 0; i < 4; i++)
                  MyCircularContainer(
                    width: controller.carousalCurrentIndex.value == i ? 24 : 6,
                    height: 6,
                    margin: const EdgeInsets.only(right: 6),
                    backgorundColor: controller.carousalCurrentIndex.value == i
                        ? AppColors.primaryDark
                        : Colors.white,
                  ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 50,
          left: 43, 
            child: Text(
          '20% of on your\nfirst purchase',
          style: MyTextStyles.styleBanner,
        )),
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
