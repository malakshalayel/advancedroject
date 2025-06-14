// import 'package:advanced_project/core/theming/textstyle.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class DoctorBlueContainer extends StatelessWidget {
//   const DoctorBlueContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 200.h,
//       child: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 1.h,
//             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),

//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24.0),
//               image: const DecorationImage(
//                 image: AssetImage('assets/images/home_blue_pattern.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Book and \nschedule with \nnearest doctor",
//                   style: TextStylesApp.InterMedium18,
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ButtonStyle(
//                     backgroundColor: WidgetStatePropertyAll(Colors.white),
//                   ),

//                   child: Text(
//                     "Find Neary",
//                     style: TextStylesApp.InterRagular11,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Row(children: [const Spacer()]),
//           Positioned(
//             top: 0,
//             right: 8.w,
//             child: Image.asset(
//               "assets/images/doctora_image.png",
//               height: 200.h,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/home_blue_pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStylesApp.InterSemibold18,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                      //minimumSize: Size(40.w, 40.h),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: TextStylesApp.InterRegular12primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            top: 0,
            child: Image.asset(
              'assets/images/doctora_image.png',
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
