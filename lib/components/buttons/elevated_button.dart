import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressedCallback});

  final VoidCallback onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      onPressedCallback;
      },
      style: ElevatedButton.styleFrom(
       
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.92, 0.0),
            end: Alignment(0.0, 1.0),
            colors: [ Color(0xFF6CC51D),Color(0xFFAEDC81),],
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 380.0,
            maxHeight: 60.0,
          ),
          child: const Text(
            'Get started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
