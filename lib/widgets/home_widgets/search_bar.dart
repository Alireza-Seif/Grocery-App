import 'package:flutter/material.dart';
import 'package:grocery/constants/themes/app_theme.dart';
import 'package:grocery/constants/themes/colors/app_colors.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _searchController = TextEditingController();
  bool isTextFieldFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          labelText: 'Search keywords...',
          filled: true,
          fillColor: AppColors.background2,
          labelStyle: isTextFieldFocused
              ? const TextStyle(color: AppColors.primary)
              : MyTextStyles.bodyText,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Icon(
              Icons.search,
              size: 30,
              color: isTextFieldFocused ? AppColors.primary : AppColors.text2,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.display_settings,
              color: isTextFieldFocused ? AppColors.primary : AppColors.text2,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        cursorColor: AppColors.primary,
        onChanged: (text) {},
        onTap: () {
          setState(() {
            isTextFieldFocused = true;
          });
        },
        onSubmitted: (text) {
          setState(
            () {
              isTextFieldFocused = false;
            },
          );
        },
      ),
    );
  }
}
