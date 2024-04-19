import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/presentation/products.dart';
import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/Features/products_details/logic/get_products_detailes.dart';
import 'package:flutter_walmart/common/widget/custom_button.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:get/get.dart';

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
      onTap: () async {
        final productsController = Get.put(ProductsidController());
        await productsController.fetchproductsid(product.id);

        final ProductsDetailes productDetails =
            productsController.productsid.value;

        print("////////////////////////productsid");
        print(productDetails);

        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    20), // Adjust the radius for the top-left corner
                topRight: Radius.circular(
                    20), // Adjust the radius for the top-right corner
              ),
              border: Border(
                top: BorderSide(
                  color: Colors.grey, // Border color
                  width: 3, // Border width
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height / 1.1,
            child: Products(
              productsid: product,
              productdetailes: productDetails,
            ),
          ),
        );
        // await Get.to(Products());
      },
      child: SizedBox(
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
