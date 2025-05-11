import 'package:advanced_project/core/helpers/app_regex.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validate: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(height: 10),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            obscuretext: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validate: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          SizedBox(height: 10),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}








// import 'package:advanced_project/core/helpers/app_regex.dart';
// import 'package:advanced_project/core/widgets/app_text_form_field.dart';
// import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
// import 'package:advanced_project/features/login/ui/widgets/password_validation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class EmailAndPassword extends StatefulWidget {
//   const EmailAndPassword({super.key});

//   @override
//   State<EmailAndPassword> createState() => _EmailAndPasswordState();
// }

// class _EmailAndPasswordState extends State<EmailAndPassword> {
//   bool isObscureText = true;

//   late TextEditingController emailController;
//   late TextEditingController passwordController;

//   bool hasUpperCase = false;
//   bool hasLowerCase = false;
//   bool hasNumber = false;
//   bool hasSpecialCharacter = false;
//   bool hasMinLength = false;
//   FocusNode? passwordFocusNode;
//   bool showPasswordValidation = false;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize controllers and focus node first
//     emailController = TextEditingController();
//     passwordController = TextEditingController();
//     passwordFocusNode = FocusNode();
//     // safe context.read() inside post-frame
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final cubit = context.read<LoginCubit>();
//       emailController = cubit.emailController;
//       passwordController = cubit.passwordController;
//       passwordFocusNode = FocusNode();
//       passwordFocusNode!.addListener(() {
//         showPasswordValidation = passwordFocusNode!.hasFocus;
//       });
//     });
//     setupPassworControllerListener();
//   }

//   void setupPassworControllerListener() {
//     passwordController.addListener(() {
//       setState(() {
//         hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
//         hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
//         hasSpecialCharacter = AppRegex.hasSpecialCharacter(
//           passwordController.text,
//         );
//         hasNumber = AppRegex.hasNumber(passwordController.text);
//         hasMinLength = AppRegex.hasMinLength(passwordController.text);
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final loginCubit = context.read<LoginCubit>(); // safe here

//     return Form(
//       key: loginCubit.formKey,
//       child: Column(
//         children: [
//           AppTextFormField(
//             controller: loginCubit.emailController,
//             hintText: "Email",
//             validate: (value) {
//               if (value == null ||
//                   value.isEmpty ||
//                   !AppRegex.isEmailValid(emailController.text)) {
//                 return "Please enter your email";
//               }
//               return null;
//             },
//           ),
//           SizedBox(height: 10.h),
//           AppTextFormField(
//             controller: loginCubit.passwordController,
//             hintText: "Password",
//             obscuretext: isObscureText,
//             validate: (value) {
//               if (value == null ||
//                   value.isEmpty ||
//                   !AppRegex.isPasswordValid(passwordController.text)) {
//                 return "Please enter your password";
//               }
//               return null;
//             },

//             // focusNode: passwordFocusNode,
//             suffixIcon: GestureDetector(
//               onTap:
//                   () => setState(() {
//                     isObscureText = !isObscureText;
//                   }),
//               child: Icon(
//                 isObscureText ? Icons.visibility_off : Icons.visibility,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           //if (showPasswordValidation)
//           PasswordValidations(
//             hasLowerCase: hasLowerCase,
//             hasUpperCase: hasUpperCase,
//             hasNumber: hasNumber,
//             hasSpecialCharacters: hasSpecialCharacter,
//             hasMinLength: hasMinLength,
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     passwordFocusNode?.dispose();

//     super.dispose();
//   }
// }

