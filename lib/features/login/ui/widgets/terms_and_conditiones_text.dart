import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionesText extends StatelessWidget {
  const TermsAndConditionesText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStylesApp.InterRagular11,
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: TextStylesApp.Gilroyregular11black,
          ),
          TextSpan(
            text: " \nand ",
            style: TextStylesApp.InterRagular11.copyWith(height: 1.5.sp),
          ),
          TextSpan(
            text: " Privacy Policy.",
            style: TextStylesApp.Gilroyregular11black,
          ),
        ],
      ),
    );
  }

  //By logging, you agree to our  Terms & Conditions and PrivacyPolicy.
}
