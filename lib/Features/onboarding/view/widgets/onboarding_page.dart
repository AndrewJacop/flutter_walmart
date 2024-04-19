import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';
import 'package:flutter_walmart/core/utils/device_utils.dart';
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
        Lottie.asset(imgLink, height: 400, frameRate: FrameRate.max),
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.1),
        Text(
          title,
          style: const TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: DeviceUtils.getScreenHeight() * 0.02,
              horizontal: DeviceUtils.getScreenHeight() * 0.05),
          child: Text(
            subTitle,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.02),
        // button
        CustomBlueButton(title: "Sign in", onPress: () {}),
        SizedBox(height: DeviceUtils.getScreenHeight() * 0.01),

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
