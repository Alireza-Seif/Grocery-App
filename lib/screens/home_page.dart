import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/app_theme.dart';

import 'package:grocery/widgets/home_widgets/promo_slider.dart';

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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Categories',
                          style: MyTextStyles.styleBanner,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (_, index) {
                          return ErticalCategories(image: ,title: , onTap: () {},);
                        },
                      ),
                    )
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

class ErticalCategories extends StatelessWidget {
  const ErticalCategories({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              title,
              style: MyTextStyles.titleStyle4,
            )
          ],
        ),
      ),
    );
  }
}
