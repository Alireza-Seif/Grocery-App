import 'package:flutter/material.dart';
import 'package:grocery/my_home_page.dart';
import 'package:grocery/screens/home/home_page.dart';



import 'screens/splash/intro_slider.dart';



void main() {
  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      home: 
       IntroSliderPage(),

    ),
  );
}
