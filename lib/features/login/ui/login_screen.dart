import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:advanced_project/core/widgets/app_text_button.dart';
import 'package:advanced_project/core/widgets/app_text_form_field.dart';
import 'package:advanced_project/features/login/ui/widgets/already_have_account_text.dart';
import 'package:advanced_project/features/login/ui/widgets/terms_and_conditiones_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isobscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStylesApp.InterBold24blue),
                SizedBox(height: 20.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStylesApp.InterRegular14grey.copyWith(
                    height: 1.7.sp,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(height: 30.h),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      SizedBox(height: 10.h),
                      AppTextFormField(
                        hintText: "password",
                        obscuretext: isobscureText,
                        suffixIcon: GestureDetector(
                          onTap:
                              () => setState(() {
                                isobscureText = !isobscureText;
                              }),
                          child: Icon(
                            isobscureText
                                ? (Icons.visibility)
                                : (Icons.visibility_off),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget Password?",
                          style: TextStylesApp.InterRegular12primaryColor,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      AppTextButton(text: "Login"),
                      SizedBox(height: 20.h),
                      TermsAndConditionesText(),
                      SizedBox(height: 40.h),
                      AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
