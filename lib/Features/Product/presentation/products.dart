import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';

import 'package:flutter_walmart/Features/Product/presentation/icon_image.dart';
import 'package:flutter_walmart/Features/Product/presentation/image_products.dart';
import 'package:flutter_walmart/Features/Product/presentation/products_price.dart';
import 'package:flutter_walmart/Features/Product/presentation/rating.dart';
import 'package:flutter_walmart/Features/Product/presentation/shipping.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_head_body.dart';
import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class Products extends StatelessWidget {
  const Products({Key? key, required this.productsid}) : super(key: key);
  final ProductsDetailes productsid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productsid.modelNumber!,
                              style: Styles.textStyle18,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              productsid.aboutProduct!,
                              style: Styles.textStyle18,
                            ),
                            const SizedBox(height: 10),
                            RatingWidget(
                              rating: 4.3,
                              reviewCount: 146,
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                        ProductCarousel(),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Try it on',
                                style: Styles.textStyle16
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                ' a different model or on yourself.',
                                style: Styles.textStyle14
                                    .copyWith(color: Colors.grey),
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
                        PriceWidget(),
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
