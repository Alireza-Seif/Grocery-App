import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      style: TextStyle(fontSize: 15),
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Email Address',
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: Icon(
            Icons.email,
            size: 30,
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
