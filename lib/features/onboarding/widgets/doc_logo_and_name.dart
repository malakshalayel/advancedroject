import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/doc_logo.svg", height: 38.h, width: 38.h),
        SizedBox(width: 10.w),
        Text("Docdoc", style: TextStyles.font24black700wieght),
      ],
    );
  }
}
