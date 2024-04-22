import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/onboarding/view/onboarding_screen.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: OnBoardingScreen(),
    );
  }
}
