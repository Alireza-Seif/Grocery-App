import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final Widget destinationPage;

  const BackButtonWidget({super.key, required this.destinationPage});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back,color: Colors.white,size: 22,),
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => destinationPage,
          ),
        );
      },
    );
  }
}
