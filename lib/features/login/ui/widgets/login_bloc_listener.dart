import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/theming/textstyle.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginBlocListener extends StatelessWidget {
//   const LoginBlocListener({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<LoginCubit, LoginState>(
//       listenWhen:
//           (previous, current) =>
//               current is Loading || current is Success || current is Error,
//       listener: (context, state) {
//         debugPrint(
//           "${state.toString()} ///////////////////////////////////////////////////////////",
//         );
//         state.whenOrNull(
//           loading: () {
//             showDialog(
//               context: context,
//               builder:
//                   (context) => const Center(
//                     child: CircularProgressIndicator(
//                       color: Color.fromARGB(255, 80, 120, 180),
//                     ),
//                   ),
//             );
//             debugPrint(
//               "${state.toString()} ///////////////////////////////////////////////////////////",
//             );
//           },
//           success: (loginResponse) {
//             Navigator.pop(context);
//             Navigator.pushNamed(context, Routes.homeScreen);
//             //context.pushNamed(Routes.homeScreen);
//           },
//           error: (error) {
//             setupErrorState(context, error);
//           },
//         );
//         debugPrint(
//           "${state.toString()} ///////////////////////////////////////////////////////////",
//         );
//       },
//       child: const SizedBox.shrink(),
//     );
//   }

//   void setupErrorState(BuildContext context, String error) {
//     print("❌ Showing error dialog with: $error");
//     Navigator.pop(context);
//     showDialog(
//       context: context,
//       builder:
//           (context) => AlertDialog(
//             icon: const Icon(Icons.error, color: Colors.red, size: 32),
//             content: Text(error, style: TextStylesApp.font15DarkBlueMedium),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('Got it', style: TextStylesApp.font14BlueSemiBold),
//               ),
//             ],
//           ),
//     );
//   }
// }
class LoginBlocListener extends StatelessWidget {
  final Widget child;

  const LoginBlocListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        debugPrint(
          "$state ///////////////////////////////////////////////////////////",
        );
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder:
                  (_) => const Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 80, 120, 180),
                    ),
                  ),
            );
          },
          success: (_) {
            Navigator.pop(context); // dismiss loading
            Navigator.pushNamed(context, Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: child,
    );
  }

  void setupErrorState(BuildContext context, String error) {
    Navigator.pop(context); // dismiss loading if open
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(error, style: TextStylesApp.font15DarkBlueMedium),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Got it', style: TextStylesApp.font14BlueSemiBold),
              ),
            ],
          ),
    );
  }
}
