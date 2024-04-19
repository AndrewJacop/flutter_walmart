import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';

import 'package:flutter_walmart/Features/Product/presentation/icon_image.dart';
import 'package:flutter_walmart/Features/Product/presentation/image_products.dart';
import 'package:flutter_walmart/Features/Product/presentation/products_price.dart';
import 'package:flutter_walmart/Features/Product/presentation/rating.dart';
import 'package:flutter_walmart/Features/Product/presentation/shipping.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_head_body.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/custom_buttom.dart';
import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.productdetailes,
    required this.productsid,
  }) : super(key: key);
  final ProductsDetailes productdetailes;
  final ProductsModel productsid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(
                                          context); // Close the bottom sheet
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.times,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: Text(
                                productsid.title!,
                                style: Styles.textStyle16.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                productdetailes.aboutProduct!,
                                style: Styles.textStyle16,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: const RatingWidget(
                                rating: 4.3,
                                reviewCount: 146,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Best seller',
                                    style: Styles.textStyle14.copyWith(
                                        color: Colors.blue[800],
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),

                                // Add some space between the product name and button
                              ]),
                        ),
                        ProductCarousel(
                          listimage: productsid.images,
                        ),
                        PriceWidget(
                          price: productsid.originalPrice,
                          salePrice: productsid.discount,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Dekivery to ",
                                  style: Styles.textStyle16
                                      .copyWith(color: Colors.grey),
                                ),
                                Text(
                                  ' Sacramennto .95829.',
                                  style: Styles.textStyle16.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.briefcase,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Sold by  ',
                                      style: Styles.textStyle16
                                          .copyWith(color: Colors.grey)),
                                  Text(' Carote Official ',
                                      style: Styles.textStyle16),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '| Pro Seller',
                                    style: Styles.textStyle14.copyWith(
                                        color: Colors.blue[800],
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.circleInfo,
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text("Fullfilled by walmart"),
                              SizedBox(
                                height: 10,
                              ),
                              const RatingWidget(
                                rating: 4.3,
                                reviewCount: 5722,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "View seller information",
                                style: Styles.textStyle14.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.arrowRotateLeft,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Free 90-day returns',
                                      style: Styles.textStyle14.copyWith(
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'details',
                                    style: Styles.textStyle14.copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Container(
                            height: 100,
                            child: Row(
                              children: [
                                Text(
                                  'Color:',
                                  style: Styles.textStyle16,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  'GRAPHIC FLORAL/DARK NAVY',
                                  style: Styles.textStyle16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        ColorSelectionWidget(),
                        FulfillmentZone()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
