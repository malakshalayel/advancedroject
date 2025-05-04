import 'package:advanced_project/core/theming/colors.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.focusedborder,
    this.enabledborder,
    this.contentpadding,
    this.obscuretext = false,
  });
  final String hintText;
  final Widget? suffixIcon;
  final bool obscuretext;
  final InputBorder? focusedborder;
  final InputBorder? enabledborder;
  final EdgeInsetsGeometry? contentpadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentpadding ??
            EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        focusedBorder:
            focusedborder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: ColorManager.primary, width: 1.w),
            ),
        enabledBorder:
            enabledborder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: ColorManager.Secondaryform,
                width: 1.3.w,
              ),
            ),

        hintText: hintText,
        hintStyle: TextStylesApp.hintTextFormField,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscuretext,
    );
  }
}
