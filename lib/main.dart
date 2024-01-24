import 'package:flutter/material.dart';
import 'package:grocery/screens/auth/auth_wdlcome.dart';
import 'package:grocery/screens/splash/splash_1.dart';



void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen1(),
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