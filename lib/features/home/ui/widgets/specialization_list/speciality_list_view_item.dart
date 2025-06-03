import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:advanced_project/features/home/data/models/specialization_responce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.darkBlue),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorManager.lighterBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    height: 42.h,
                    width: 42.w,
                  ),
                ),
              )
              : CircleAvatar(
                radius: 28,
                backgroundColor: ColorManager.lighterBlue,
                child: SvgPicture.asset(
                  'assets/svgs/general_speciality.svg',
                  height: 40.h,
                  width: 40.w,
                ),
              ),
          SizedBox(height: 8.h),
          Text(
            specializationsData?.name ?? 'Specialization',
            style:
                itemIndex == selectedIndex
                    ? TextStylesApp.Inter400w14black
                    : TextStylesApp.InterRegular14grey,
          ),
        ],
      ),
    );
  }
}
