import 'dart:math';

import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: TextStylesApp.InterSemibold16),
      style: TextButton.styleFrom(
        backgroundColor: ColorManager.primary,
        padding: EdgeInsets.symmetric(horizontal: 133, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ), // Adjust the radius as needed
        ),
      ),
    );
  }
}
