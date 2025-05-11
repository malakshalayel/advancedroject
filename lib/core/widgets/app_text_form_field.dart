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
    this.controller,
    this.validate,
    this.backgroundColor,
    FocusNode? focusNode, // Initialize in the constructor body if null
    bool? showPasswordValidation,
  }) : focusNode = focusNode ?? FocusNode(),
       showPasswordValidation = showPasswordValidation ?? false;
  final String hintText;
  final Widget? suffixIcon;
  final bool obscuretext;
  final InputBorder? focusedborder;
  final InputBorder? enabledborder;
  final EdgeInsetsGeometry? contentpadding;
  final TextEditingController? controller;
  final Function(String)? validate;
  final Color? backgroundColor;
  final FocusNode? focusNode;
  bool? showPasswordValidation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validate!(value!);
      },
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
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
        filled: true,
        fillColor: backgroundColor ?? Colors.white,

        hintText: hintText,
        hintStyle: TextStylesApp.hintTextFormField,
        suffixIcon: suffixIcon,
      ),
      obscureText: obscuretext,
      focusNode: focusNode,
    );
  }
}
