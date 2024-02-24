import 'package:flutter/material.dart';

class MyBNB extends StatelessWidget {
  const MyBNB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_outlined,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 73,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 73,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
