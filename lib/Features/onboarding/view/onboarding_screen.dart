import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/onboarding/controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: const Color(0xff0071dc),
      appBar: AppBar(
        title: const Text("data"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Backround

          /// Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [],
          ),
        ],
      ),
    );
  }
}
