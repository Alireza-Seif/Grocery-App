import 'package:flutter/material.dart';

class PromoView extends StatefulWidget {
  const PromoView({super.key, required PageController controller, this.myController});
  final dynamic myController;
  @override
  State<PromoView> createState() => _PromoViewState();
}

class _PromoViewState extends State<PromoView> {
  var images = [
    'assets/images/banners/promo_banner_1.webp',
    'assets/images/banners/promo_banner_2.webp',
    'assets/images/banners/promo_banner_3.webp',
    'assets/images/banners/promo_banner_4.webp',
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.myController,
      children: [
        myPages(images[0]),
        myPages(images[1]),
        myPages(images[2]),
        myPages(images[3]),
      ],
    );
  }
}

Widget myPages(String image) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(30)),
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.fill,
    ),
  );
}
