import 'package:flutter/material.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(fontSize: 15),
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Phone number',
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: Icon(
            Icons.phone,
            size: 30,
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}