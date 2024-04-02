import 'package:flutter/material.dart';

class ItemBanner extends StatelessWidget {
  final String imgurl;
  final double aspectR;

  const ItemBanner(
      {Key? key,
      this.imgurl =
          "https://m.media-amazon.com/images/I/61wJXyIAKwL.__AC_SX300_SY300_QL70_FMwebp_.jpg",
      required this.aspectR})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: aspectR,
            child: Image.network(
              fit: BoxFit.fill,
              imgurl,
            ),
          ),
          Positioned(
            top: 2.0,
            left: -10.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0), // No shadow
                overlayColor: MaterialStateProperty.all(
                    Colors.transparent), // No overlay color on press
              ),
              onPressed: () {
                // Handle button press
              },
              child: const Text(
                'Shop now',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 10.0,
            child: Column(
              children: [
                Text(
                  // '\$399',
                  "",
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "",
                      // '\$',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      // '169',
                      "",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
