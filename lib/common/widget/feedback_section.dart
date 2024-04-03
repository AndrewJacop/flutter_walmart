import 'package:flutter/material.dart';

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
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 7.0),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  side: const BorderSide(
                    color: Colors.black, // Define border color
                    width: 1.0, // Define border width
                  ),
                ),
              ),
            ),
            child: const Text(
              "Give Feedback",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
