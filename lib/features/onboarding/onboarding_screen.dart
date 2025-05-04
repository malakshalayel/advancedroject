import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:advanced_project/features/onboarding/widgets/docImage_and_text.dart';
import 'package:advanced_project/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:advanced_project/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DocLogoAndName(),
                SizedBox(height: 50.h),
                DoctorImageAndText(),
                Text(
                  textAlign: TextAlign.center,
                  "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                  style: TextStylesApp.font12grey400weight,
                ),
                SizedBox(height: 30.h),
                GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
