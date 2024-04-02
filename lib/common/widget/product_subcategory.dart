import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/widget/custom_button.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class SubProductCard extends StatelessWidget {
  final String productId;
  final String productName;
  final double price;
  final double? salePrice;
  final String? imgurl;

  const SubProductCard({
    Key? key,
    required this.productId,
    required this.productName,
    required this.price,
    this.salePrice,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle tap
      },
      child: Container(
        width: 200,
        height: 100, // Adjust height as needed

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: AspectRatio(
                  aspectRatio: 11 / 10,
                  child: Image.network(
                    imgurl!,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Price: \$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              if (salePrice != null)
                Text(
                  'Sale Price: \$${salePrice!.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.red, // Add sale price color
                  ),
                ),
              SizedBox(height: 4.0),
              Text(
                productName,
                style: Styles.textStyle14,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              CustomButton(
                title: "Option",
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
