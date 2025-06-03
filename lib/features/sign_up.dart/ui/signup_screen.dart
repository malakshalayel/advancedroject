import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:advanced_project/core/widgets/app_text_button.dart';
import 'package:advanced_project/features/login/ui/widgets/terms_and_conditiones_text.dart';

import 'package:advanced_project/features/sign_up.dart/logic/signup_cubit.dart';
import 'package:advanced_project/features/sign_up.dart/ui/widgets/already_have_account.dart';
import 'package:advanced_project/features/sign_up.dart/ui/widgets/signup_form.dart';
import 'package:advanced_project/features/sign_up.dart/ui/widgets/signup_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                Text("Create Account", style: TextStylesApp.InterBold24blue),
                SizedBox(height: 20.h),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStylesApp.InterRegular14grey.copyWith(
                    height: 1.7.sp,
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(height: 30.h),
                SignupForm(),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    SizedBox(height: 18.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password?",
                        style: TextStylesApp.InterRegular12primaryColor,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    AppTextButton(
                      text: "Sign Up",
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    SizedBox(height: 20.h),
                    TermsAndConditionesText(),
                    SizedBox(height: 40.h),
                    AlreadyHaveAccountText(),
                    SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoSignup(BuildContext context) {
  if (context.read<SignupCubit>().formKey.currentState!.validate()) {
    context.read<SignupCubit>().emitSignupState();
  }
}
