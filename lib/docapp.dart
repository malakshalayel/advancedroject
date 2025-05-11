import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone 13 Pro Max size
      minTextAdapt: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.primary,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoarding,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
