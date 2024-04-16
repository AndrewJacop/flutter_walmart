import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class PriceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      child: Row(
        children: [
          Text(
            '\$',
            style: Styles.textStyle14,
          ),
          Text(
            '16',
            style: Styles.textStyle18,
          ),
          Text(
            '.98',
            style: Styles.textStyle14,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Price when purchased online',
            style: Styles.textStyle14,
          ),
        ],
      ),
    );
  }
}
