import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.network(
                  "https://i5.walmartimages.com/dfw/4ff9c6c9-a9ea/k2-_c005f233-4ecc-4d99-beb8-6e7faf7b241d.v1.svg",
                  height: 100,
                ),
                const Text(
                  "Everyday items you've bought will show here for quick and easy reordering",
                  textAlign: TextAlign.center,
                )
              ],
            ),
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
