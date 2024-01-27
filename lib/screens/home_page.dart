import 'package:flutter/material.dart';
import 'package:grocery/constants/image_strings.dart';

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
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                const MySearchBar(),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image(image: AssetImage(MyImages.promoBanner1)),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
