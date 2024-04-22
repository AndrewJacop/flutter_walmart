import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/mylists/view/widgets/backdrop_card.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';

class ListsTap extends StatelessWidget {
  const ListsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// Background TIle
          const SizedBox(height: 40),
          const BackdropCard(
            height: 200,
            svgLink:
                "https://i5.walmartimages.com/dfw/4ff9c6c9-a9ea/k2-_c005f233-4ecc-4d99-beb8-6e7faf7b241d.v1.svg",
            text: "Sign in to see your saved lists",
          ),
          const SizedBox(height: 20),

          /// sign in Button
          CustomBlueButton(
            title: "Sign in or create account",
            onPress: () {},
          )
        ],
      ),
    ));
  }
}
