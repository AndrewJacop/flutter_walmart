import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/presentation/rating.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_seacrch.dart';
import 'package:flutter_walmart/common/widget/button_enmation.dart';
import 'package:flutter_walmart/core/utils/assets.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key, required this.itemsview}) : super(key: key);
  final List<ProductsModel> itemsview;
  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> items = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: CustomSearch(),
      ),
      body: items != null && items.isNotEmpty
          ? ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ProductsCategoryShow(itemsproduct: items[index]);
              },
            )
          : Center(
              child:
                  Image.asset(AssetsData.pageerror), // Placeholder image widget
            ),
    );
  }
}

class ProductsCategoryShow extends StatelessWidget {
  const ProductsCategoryShow({Key? key, required this.itemsproduct})
      : super(key: key);
  final ProductsModel itemsproduct;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.2,
            height: MediaQuery.of(context).size.height / 3,
            child: Image.network(
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
                itemsproduct.images[0]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemsproduct.originalPrice,
                  style: Styles.textStyle14,
                ),
                Text(
                  itemsproduct.title,
                  style: Styles.textStyle14,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                Ratingcategory(
                  rating: 4.3,
                ),
                Text(
                  "Delivery today",
                  style: Styles.textStyle14,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 30,
                ),
                AnimatedNumber(
                  productsid: itemsproduct,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
