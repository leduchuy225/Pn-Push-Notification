import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'data/api_locator.dart';
import 'routers/main_router.dart';
import 'services/service_locator.dart';
import 'theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupServiceLocator();
  setupApiLocator();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      theme: AppTheme.themeData,
      defaultTransition: Transition.cupertino,
      onGenerateRoute: MainRouter.generateRoute,
      builder: (context, child) {
        return SafeArea(child: child!);
      },
    );
  }
}
