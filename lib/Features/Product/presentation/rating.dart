import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final double rating;
  final int reviewCount;

  const RatingWidget({
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) {
              if (index < rating.floor()) {
                return Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 12,
                );
              } else if (index == rating.floor() && rating % 1 != 0) {
                return Icon(
                  Icons.star_half,
                  color: Colors.yellow,
                  size: 12,
                );
              } else {
                return Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                  size: 12,
                );
              }
            },
          ),
        ),
        SizedBox(width: 4),
        Text(
          '($rating)',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(width: 4),
        Text(
          '$reviewCount reviews',
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
