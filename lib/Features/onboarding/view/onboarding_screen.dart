import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_walmart/features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_walmart/features/onboarding/view/widgets/onboarding_page.dart';
import 'package:flutter_walmart/core/utils/device_utils.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: const Color(0xff0071dc),
      body: SafeArea(
        child: Stack(
          children: [
            // Backround
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: DeviceUtils.getScreenHeight() * 0.03),
                  child: SvgPicture.asset(
                    "assets/svg/walmart_logo_spark.svg",
                    height: 32,
                    width: 32,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Lottie.asset("assets/animations/bg.json",
                    height: DeviceUtils.getScreenHeight() * 0.5),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SmoothPageIndicator(
                              controller: controller.pageController,
                              count: 3,
                              onDotClicked: controller.dotNavigationClick),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                  imgLink: "assets/animations/ob1.json",
                  title: "Welcome to Walmart",
                  subTitle:
                      "Sign in to track orders and earn Walmart Cash, check in for faster pickup and get personalized shopping recommendations.",
                ),
                OnBoardingPage(
                  imgLink: "assets/animations/ob2.json",
                  title: "Get order and saving updates",
                  subTitle:
                      "We'll notify you about order status, special savings, store events and more.",
                ),
                OnBoardingPage(
                  imgLink: "assets/animations/ob3.json",
                  title: "Share your location",
                  subTitle:
                      "We need to know your location for features like: Scan & Go, fuel discounts, pickup check in, delivery estimates and to show you nearby stores.",
                ),
              ],
            ),

            /// Horizontal scrollable Pages
          ],
        ),
      ),
    );
  }
}
