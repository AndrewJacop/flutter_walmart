import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/backdrop_card.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/custom_blue_button.dart';
import 'package:flutter_walmart/common/widget/feedback_section.dart';
import 'package:flutter_walmart/common/widget/subcategory_section.dart';

class ReorderTab extends StatelessWidget {
  const ReorderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// Background TIle
          const BackdropCard(
            height: 100,
            svgLink:
                "https://i5.walmartimages.com/dfw/4ff9c6c9-a9ea/k2-_c005f233-4ecc-4d99-beb8-6e7faf7b241d.v1.svg",
            text:
                "Everyday items you've bought will show here for quick and easy reordering",
          ),

          /// sign in Button
          const SizedBox(height: 20),
          CustomBlueButton(
            title: "Sign in or create account",
            onPress: () {},
          ),
          const SizedBox(height: 40),

          /// Sub category section
          const SubcategorySection(),

          /// footer
          const FeedbackSection()
        ],
      ),
    ));
  }
}
