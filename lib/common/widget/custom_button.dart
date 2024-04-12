import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;

  const CustomButton({
    super.key,
    required this.title,
    this.width =
        double.infinity, // Default width is set to fill available space
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 22.0, vertical: 7.0),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20.0), // Adjust the radius as needed
              side: const BorderSide(
                color: Colors.black, // Define border color
                width: 1.0, // Define border width
              ),
            ),
          ),
        ),
        child: Text(
          title,
          style: Styles.textStyle16.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
