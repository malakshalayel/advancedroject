import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/theming/colors.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: ColorManager.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),

      onPressed: () {
        Navigator.pushNamed(context, Routes.loginScreen);
      },
      child: Text("Get Started", style: TextStyle(color: Colors.white)),
    );
  }
}
