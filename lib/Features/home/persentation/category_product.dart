import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/Product/logic/products_get.dart';
import 'package:flutter_walmart/common/widgets/button_enmation.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/features/Product/presentation/rating.dart';
import 'package:flutter_walmart/features/home/persentation/widget/appbar/custom_seacrch.dart';
import 'package:flutter_walmart/common/data/category_get.dart';
import 'package:flutter_walmart/core/utils/assets.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.itemsview});
  final List<ProductsModel> itemsview;

  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> items = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const CustomSearch(),
      ),
      body: items.isNotEmpty
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
  ProductsCategoryShow({super.key, required this.itemsproduct});
  final ProductsController favoriteController = Get.put(ProductsController());
  final ProductsModel itemsproduct;
  final CategoriesController controller = Get.find<CategoriesController>();
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
            child: Stack(children: [
              // Image.network(
              //     height: MediaQuery.of(context).size.height,
              //     fit: BoxFit.fill,
              //     itemsproduct.images[0]),
              CachedNetworkImage(
                placeholderFadeInDuration: Duration.zero,
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageUrl: itemsproduct.images[0],
                fit: BoxFit.fill,
              ),
              Positioned(
                top: -10,
                left: -10,
                child: Obx(() => IconButton(
                      icon: Icon(
                        itemsproduct.myitems.isTrue
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: itemsproduct.myitems.isTrue
                            ? Colors.red
                            : Colors.grey,
                      ),
                      onPressed: () {
                        favoriteController.addmylist(itemsproduct);
                      },
                    )),
              ),
            ]),
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
                const Ratingcategory(
                  rating: 4.3,
                ),
                const Text(
                  "Delivery today",
                  style: Styles.textStyle14,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(
                  () => controller.toggleClick.value
                      ? AnimatedNumber(
                          productsid: itemsproduct,
                        )
                      : InkWell(
                          onTap: () {
                            controller.toggle();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                            width: MediaQuery.of(context).size.width / 2.3,
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
