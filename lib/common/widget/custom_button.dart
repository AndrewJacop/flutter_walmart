import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;

  const CustomButton({
    Key? key,
    required this.title,
    this.width =
        double.infinity, // Default width is set to fill available space
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 22.0, vertical: 7.0),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20.0), // Adjust the radius as needed
              side: BorderSide(
                color: Colors.black, // Define border color
                width: 1.0, // Define border width
              ),
            ),
          ),
        ),
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
