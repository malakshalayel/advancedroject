import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo_lowopcity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0)],
              stops: const [.14, .4],
            ),
          ),
          child: Image.asset("assets/images/doctor_onboarding.png"),
        ),
        Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor \n Appointment App",
            style: TextStylesApp.font32blueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
