import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/backdrop_card.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/custom_blue_button.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/custom_outline_button.dart';
import 'package:flutter_walmart/common/widget/feedback_section.dart';
import 'package:flutter_walmart/common/widget/subcategory_section.dart';

class RegistriesTab extends StatelessWidget {
  const RegistriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// Background TIle
          const SizedBox(height: 40),
          const BackdropCard(
            height: 250,
            svgLink:
                "https://i5.walmartimages.com/dfw/4ff9c6c9-4047/k2-_20ee2089-a6f8-4200-8ec4-a8ad44742e4b.v1.svg",
            text:
                "Sign in to see your registries.\nOr, find a friend's registry.",
          ),
          const SizedBox(height: 20),

          /// sign in Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomOutlinedButton(title: "Find a registry", onPress: () {}),
                CustomBlueButton(
                  title: "     Sign in     ",
                  onPress: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),

          /// Text button
          TextButton(
              onPressed: () {},
              child: const Text(
                "Learn more about registries",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline),
              )),
          const SizedBox(height: 40),

          /// Footer
          const FeedbackSection()
        ],
      ),
    ));
  }
}
