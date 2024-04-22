import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';

import 'package:flutter_walmart/Features/Product/presentation/icon_image.dart';
import 'package:flutter_walmart/Features/Product/presentation/image_products.dart';
import 'package:flutter_walmart/Features/Product/presentation/products_price.dart';
import 'package:flutter_walmart/Features/Product/presentation/rating.dart';
import 'package:flutter_walmart/Features/Product/presentation/shipping.dart';
import 'package:flutter_walmart/Features/cart/logic/get_cart.dart';

import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/common/widget/button_enmation.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Products extends StatefulWidget {
  const Products({
    Key? key,
    required this.productdetailes,
    required this.productsid,
  }) : super(key: key);
  final ProductsDetailes productdetailes;
  final ProductsModel productsid;

  @override
  State<Products> createState() => _ProductsState();
}

bool togleclick = false;

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: Stack(children: [
              CustomScrollView(
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
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(
                                            context); // Close the bottom sheet
                                      },
                                      child: const Icon(
                                        FontAwesomeIcons.times,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  widget.productsid.title!,
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
                                  widget.productdetailes.aboutProduct!,
                                  style: Styles.textStyle16,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: RatingWidget(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                            listimage: widget.productsid.images,
                          ),
                          PriceWidget(
                            price: widget.productsid.originalPrice,
                            salePrice: widget.productsid.discount,
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
              Positioned(
                // This positions the button containing the price
                bottom: -1,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.grey[200],
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Text("Estimated total 3 of 3 items"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              " Actual Color :",
                              style: Styles.textStyle18.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Black .",
                              style: Styles.textStyle14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      15), // Adjust border radius as needed
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 2), // Add border properties
                                ),
                                width: MediaQuery.of(context).size.width / 2,
                                height: 35,
                                child: Center(
                                  child: Text(
                                    'Buy Now',
                                    style: Styles.textStyle14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            togleclick
                                ? AnimatedNumber(
                                    productsid: widget.productsid,
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        togleclick =
                                            !togleclick; // Toggle the toggleClick state
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                      ),
                                      width: MediaQuery.of(context).size.width /
                                          2.3,
                                      height: 35,
                                      child: Center(
                                        child: Text(
                                          'Add to cart',
                                          style: Styles.textStyle14
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
