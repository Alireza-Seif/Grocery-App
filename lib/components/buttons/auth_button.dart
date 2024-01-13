import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.onPressedCallback, required this.buttonWidget});

    final VoidCallback onPressedCallback;
    final Widget buttonWidget; 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedCallback,
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
            colors: [
              Color(0xFF6CC51D),
              Color(0xFFAEDC81),
            ],
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(
            maxWidth: 380.0,
            maxHeight: 60.0,
          ),
          child: buttonWidget,
        ),
      ),
    );
  }
}