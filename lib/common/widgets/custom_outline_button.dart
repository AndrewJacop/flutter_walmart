import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.title,
    required this.onPress, // Default width is set to fill available space
  });

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPress();
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
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
