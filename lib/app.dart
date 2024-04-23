import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:flutter_walmart/features/onboarding/view/onboarding_screen.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      initialRoute: AppRouter.kHomeView, // Set initial route
      getPages: AppRouter.routes,
    );
  }
}
