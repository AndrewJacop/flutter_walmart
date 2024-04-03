import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/custom_outline_button.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Text("We'd love to hear what you think!"),
          const SizedBox(height: 12),
          CustomOutlinedButton(title: "Give Feedback", onPress: () {}),
        ],
      ),
    );
  }
}
