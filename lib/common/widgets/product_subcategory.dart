import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/common/widget/product_subcategory.dart
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/logic/products_get.dart';
import 'package:flutter_walmart/Features/Product/presentation/products.dart';
import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/Features/products_details/logic/get_products_detailes.dart';
import 'package:flutter_walmart/common/widget/custom_button.dart';
=======
import 'package:flutter_walmart/common/widgets/custom_button.dart';
>>>>>>> andrew:lib/common/widgets/product_subcategory.dart
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';

class SubProductCard extends StatelessWidget {
  final ProductsModel product;
  final ProductsController favoriteController = Get.put(ProductsController());

<<<<<<< HEAD:lib/common/widget/product_subcategory.dart
  SubProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100, // Adjust height as needed
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: AspectRatio(
                    aspectRatio: 11 / 10,
                    child: Image.network(
                      product.images!.isNotEmpty ? product.images![0] : "",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Price: \$${product.originalPrice!}',
                  style: TextStyle(
=======
  const SubProductCard({
    super.key,
    required this.productId,
    required this.productName,
    required this.price,
    this.salePrice,
    required this.imgurl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle tap
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
                  child: Image.network(
                    imgurl!,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Price: \$${price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              if (salePrice != null)
                Text(
                  'Sale Price: \$${salePrice!.toStringAsFixed(2)}',
                  style: const TextStyle(
>>>>>>> andrew:lib/common/widgets/product_subcategory.dart
                    fontSize: 14.0,
                  ),
                ),
<<<<<<< HEAD:lib/common/widget/product_subcategory.dart
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
                  style: TextStyle(fontSize: 14.0),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                CustomButton(
                  ontap: () async {
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
                  title: "Option",
                  width: 100,
                )
              ],
            ),
            Positioned(
              top: -10,
              left: -10,
              child: Obx(() => IconButton(
                    icon: Icon(
                      product.myitems.isTrue
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: product.myitems.isTrue ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      favoriteController.addmylist(product);
                    },
                  )),
            ),
          ],
=======
              const SizedBox(height: 4.0),
              Text(
                productName,
                style: Styles.textStyle14,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const CustomButton(
                title: "Option",
                width: 100,
              )
            ],
          ),
>>>>>>> andrew:lib/common/widgets/product_subcategory.dart
        ),
      ),
    );
  }
}
