import 'package:advanced_project/core/di/dependency_injection.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/docapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  // to fix texts mbieng hidden bug in flutter_ScreenUtil in reales mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
