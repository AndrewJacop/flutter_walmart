import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/auth/views/auth_screen.dart';
import 'package:flutter_walmart/Features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';
import 'package:flutter_walmart/core/utils/device_utils.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  final String imgLink;
  final String title;
  final String subTitle;
  const OnBoardingPage(
      {super.key,
      required this.imgLink,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.1),
        Lottie.asset(imgLink,
            height: DeviceUtils.getScreenHeight() * 0.45,
            frameRate: FrameRate.max),
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.1),
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: DeviceUtils.getScreenHeight() * 0.01,
              horizontal: DeviceUtils.getScreenHeight() * 0.01),
          child: Text(
            subTitle,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.01),
        // button
        CustomBlueButton(
            title: "Sign in",
            onPress: () => {
                  Get.bottomSheet(
                    const AuthScreen(),
                    isScrollControlled: true,
                    clipBehavior: Clip.antiAlias,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                }),
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.005),

        TextButton(
            onPressed: () => controller.nextPage(),
            child: const Text(
              "Continue as guest",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ))
      ],
    );
  }
}
