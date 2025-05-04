import 'dart:math';

import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text, style: TextStylesApp.InterSemibold16),
      style: TextButton.styleFrom(
        backgroundColor: ColorManager.primary,
        padding: EdgeInsets.symmetric(horizontal: 140, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ), // Adjust the radius as needed
        ),
      ),
    );
  }
}
