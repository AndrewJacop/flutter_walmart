import 'package:flutter/material.dart';

class ItemBanner extends StatelessWidget {
  const ItemBanner({Key? key, required this.imgurl}) : super(key: key);
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 18 / 18, // Adjust the aspect ratio as needed
            child: Image.network(
              imgurl,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 10.0, // Adjust as needed
            left: 20.0, // Adjust as needed
            child: ElevatedButton(
              // Add your button here
              onPressed: () {
                // Handle button press
              },
              child: Text('Your Button'),
            ),
          ),
        ],
      ),
    );
  }
}
