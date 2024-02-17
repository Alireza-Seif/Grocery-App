import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




import 'screens/splash/intro_slider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: 
      IntroSliderPage(),
    ),
  );
}
