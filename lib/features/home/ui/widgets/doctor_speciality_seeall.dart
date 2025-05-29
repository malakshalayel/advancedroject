import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/widgets.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Doctor Speciality", style: TextStylesApp.InterSemibold18),

            Text("See All", style: TextStylesApp.InterRegular12primaryColor),
          ],
        ),
      ],
    );
  }
}
