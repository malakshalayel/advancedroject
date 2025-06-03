import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/features/home/data/models/specialization_responce.dart';
import 'package:advanced_project/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_project/features/home/ui/widgets/specialization_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecializationShimmerLoading extends StatelessWidget {
  SpecializationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorManager.lightGrey,
                  highlightColor: Colors.white,
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(height: 14.h),
                Shimmer.fromColors(
                  baseColor: ColorManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 14.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: ColorManager.lightGrey,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
