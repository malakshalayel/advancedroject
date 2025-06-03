import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account yet? ",
            style: TextStylesApp.Inter400w14black,
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(
                      context,
                    ).pushReplacementNamed(Routes.signupScreen);
                  },
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
