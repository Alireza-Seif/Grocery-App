import 'package:flutter/material.dart';
import 'package:grocery/screens/intro_slider.dart';



void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: IntroSliderPage(),
    ),
  );
}

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}