import 'package:flutter/material.dart';
import 'package:grocery/constants/langs/app_strings.dart';
import 'package:grocery/screens/home/category_page.dart';

import '../../constants/image_strings.dart';
import '../../constants/themes/app_theme.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      MyImages.categorie1,
      MyImages.categorie2,
      MyImages.categorie3,
      MyImages.categorie4,
      MyImages.categorie5,
      MyImages.categorie6,
      MyImages.categorie7,
    ];

    List<String> titleList = [
      'Vegetables',
      'Fruits',
      'Beverages',
      'Grocery',
      'Edible oil',
      'Household',
      'BabyCare',
    ];

    List<Color> backgroundColorList = [
      const Color(0xFFE6F2EA),
      const Color(0xFFFFE9E5),
      const Color(0xFFFFF6E3),
      const Color(0xFFF3EFFA),
      const Color(0xFFDCF4F5),
      const Color(0xFFFFE8F1),
      const Color(0xFFD1EEFF),
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              AppString.categories,
              style: MyTextStyles.styleBanner,
            ),
            IconButton(
              onPressed: () {
                 Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CategoryPage(),
                          ),
                        );
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              iconSize: 20,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (_, index) {
              return ErticalCategories(
                image: imageList[index],
                title: titleList[index],
                onTap: () {},
                backgroundColor: backgroundColorList[index],
              );
            },
          ),
        )
      ],
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
              width: 52,
              height: 52,
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
