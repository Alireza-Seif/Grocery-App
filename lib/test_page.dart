import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: Colors.white,
          child: Image.asset(
            'assets/images/auth/auth1.webp',
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
