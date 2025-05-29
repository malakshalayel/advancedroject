import 'package:advanced_project/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:advanced_project/features/home/ui/widgets/doctor_speciality_seeall.dart';
import 'package:advanced_project/features/home/ui/widgets/hometapbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 25.h,
            bottom: 20.h,
          ),
          width: double.infinity,

          child: Column(
            children: [
              HomeTopBar(),
              DoctorBlueContainer(),
              SizedBox(height: 20.h),
              DoctorSpeciality(),
            ],
          ),
        ),
      ),
    );
  }
}
