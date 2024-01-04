import 'package:big_cart/constants/langs/app_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 40),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash1.png'),
                fit: BoxFit.cover),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const Image(
                  image: AssetImage('assets/images/bigCart1.png'),
                ),
                const Text(
                  AppString.splashScreenText,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 500,),
                ElevatedButton(
                    onPressed: () {}, child: const Text(AppString.splashButtonText))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
