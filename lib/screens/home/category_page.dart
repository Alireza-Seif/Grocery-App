import 'package:flutter/material.dart';
import 'package:grocery/constants/image_strings.dart';
import 'package:grocery/constants/langs/app_strings.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';
import 'package:grocery/screens/home/home_page.dart';

import '../../constants/themes/app_theme.dart';
import '../../widgets/home_widgets/app_bar_pages.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarPages(
            destinationPage: HomPage(), titleText: AppString.categories),
      ),
      body: Container(padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        color: AppColors.background2,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: 7,
          itemBuilder: (_, index) {
            return ErticalCategoriesPage(
              image: imageList[index],
              title: titleList[index],
              onTap: () {},
              backgroundColor: backgroundColorList[index],
            );
          },
        ),
      ),
    );
  }
}


class ErticalCategoriesPage extends StatelessWidget {
  const ErticalCategoriesPage({
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
        padding: const EdgeInsets.only(top: 15,right: 5,left: 5),
        child: Container(color: Colors.white,height: 120,width: 120,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 66,
                height: 66,
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
      ),
    );
  }
}
