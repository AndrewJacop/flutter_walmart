import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';
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
        const SizedBox(height: 100),
        Lottie.asset(imgLink, height: 400, frameRate: FrameRate.max),
        const SizedBox(height: 180),
        Text(
          title,
          style: const TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Text(
            subTitle,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        const SizedBox(height: 20),
        // button
        CustomBlueButton(title: "Sign in", onPress: () {}),
        const SizedBox(height: 10),

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
