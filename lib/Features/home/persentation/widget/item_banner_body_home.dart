import 'package:flutter/material.dart';

class ItemBanner extends StatelessWidget {
  final String imgurl;

  const ItemBanner({Key? key, required this.imgurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 20.0,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Shop now'),
            ),
          ),
        ],
      ),
    );
  }
}
