import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.pageIndex, required this.onTap});

  final int pageIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            color: Colors.blue,
            child: Row(
              children: [
                navItem(
                  Icons.home_outlined,
                  pageIndex == 0,
                  onTap: () => onTap(0),
                ),
                navItem(
                  Icons.person_outlined,
                  pageIndex == 1,
                  onTap: () => onTap(1),
                ),
                navItem(
                  Icons.favorite_border_outlined,
                  pageIndex == 2,
                  onTap: () => onTap(2),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: selected ? Colors.white : Colors.white.withOpacity(0.4),
      ),
    ),
  );
}
