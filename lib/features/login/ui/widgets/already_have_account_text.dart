import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet? ",
            style: TextStylesApp.Inter400w14black,
          ),
          TextSpan(
            text: "  Sign Up",
            style: TextStylesApp.Inter400w14black.copyWith(
              color: const Color(0xFF247CFF),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
