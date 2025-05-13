import 'package:advanced_project/core/di/dependency_injection.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/docapp.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
