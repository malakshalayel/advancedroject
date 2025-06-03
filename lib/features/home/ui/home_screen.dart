import 'package:advanced_project/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_project/features/home/logic/cubit/home_state.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctor_bloc_builder.dart';
import 'package:advanced_project/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:advanced_project/features/home/ui/widgets/doctors_list/doctor_list_view_item.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/speciality_list_view.dart';
import 'package:advanced_project/features/home/ui/widgets/doctor_speciality_seeall.dart';
import 'package:advanced_project/features/home/ui/widgets/hometapbar.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/specialization_block_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  //malak@gmail.com
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              SizedBox(height: 24.h),
              const DoctorSpeciality(),
              SizedBox(height: 18.h),
              const SpecializationBlockBuilder(),
              SizedBox(height: 18.h),
              const DoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
