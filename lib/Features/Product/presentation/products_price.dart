import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class PriceWidget extends StatelessWidget {
  final String price;
  final double? salePrice; // Nullable for the sale price

  PriceWidget({required this.price, this.salePrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(
              "Now",
              style: Styles.textStyle18.copyWith(
                  color: Colors.green[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            Text(
              '\$',
              style: Styles.textStyle18.copyWith(
                  color: Colors.green[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            Text(
              price,
              style: Styles.textStyle18.copyWith(
                  color: Colors.green[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              salePrice != null
                  ? 'Sale Price: \$${salePrice!.toStringAsFixed(2)}'
                  : 'Price when purchased online',
              style: Styles.textStyle14,
            ),
          ],
        ),
      ),
    );
  }
}
