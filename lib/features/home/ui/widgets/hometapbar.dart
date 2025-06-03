import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, malak!", style: TextStylesApp.InterBold18),
            SizedBox(height: 4.0),
            Text("How Are You Today?", style: TextStylesApp.InterRegular11),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 30.0,
          backgroundColor: ColorManager.lightGrey,
          child: SvgPicture.asset("assets/svgs/Button.svg"),
        ),
      ],
    );
  }
}
