import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final double rating;
  final int reviewCount;

  const RatingWidget({
    required this.rating,
    this.reviewCount = 146,
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
                  color: Colors.yellow[700],
                  size: 12,
                );
              } else if (index == rating.floor() && rating % 1 != 0) {
                return Icon(
                  Icons.star_half,
                  color: Colors.yellow[700],
                  size: 12,
                );
              } else {
                return Icon(
                  Icons.star_border,
                  color: Colors.yellow[700],
                  size: 12,
                );
              }
            },
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '($rating)',
          style: const TextStyle(fontSize: 12),
        ),
        const SizedBox(width: 4),
        Text(
          '$reviewCount reviews',
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class Ratingcategory extends StatelessWidget {
  final double rating;

  const Ratingcategory({
    required this.rating,
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
                  color: Colors.yellow[700],
                  size: 12,
                );
              } else if (index == rating.floor() && rating % 1 != 0) {
                return Icon(
                  Icons.star_half,
                  color: Colors.yellow[700],
                  size: 12,
                );
              } else {
                return Icon(
                  Icons.star_border,
                  color: Colors.yellow[700],
                  size: 12,
                );
              }
            },
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '($rating)',
          style: const TextStyle(fontSize: 12),
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
