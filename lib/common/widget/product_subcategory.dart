import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/common/widget/custom_button.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class SubProductCard extends StatelessWidget {
  final ProductsModel product;

  const SubProductCard({
    Key? key,
    required this.product,
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
                    child: CachedNetworkImage(
                      placeholderFadeInDuration: Duration.zero,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      imageUrl:
                          product.images!.isNotEmpty ? product.images![0] : "",
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Price: \$${product.originalPrice!}',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              if (product.discount != 0)
                Text(
                  'Sale Price: \$${product.discount!.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.red, // Add sale price color
                  ),
                ),
              SizedBox(height: 4.0),
              Text(
                product.title!,
                style: Styles.textStyle14,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              CustomButton(
                ontap: () {},
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
