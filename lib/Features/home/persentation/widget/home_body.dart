import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/widgets/cardview.dart';
import 'package:flutter_walmart/common/widgets/category_section.dart';
import 'package:flutter_walmart/common/widgets/feedback_section.dart';
import 'package:flutter_walmart/common/widgets/subcategory_section.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/features/Product/logic/products_get.dart';
import 'package:flutter_walmart/features/Product/logic/subcategory_get.dart';
import 'package:flutter_walmart/features/cart/logic/get_cart.dart';
import 'package:flutter_walmart/features/home/data/model/ads_model.dart';
import 'package:flutter_walmart/features/home/logic/get_ads.dart';
import 'package:flutter_walmart/features/home/persentation/widget/item_banner_body_home.dart';
import 'package:flutter_walmart/common/data/category_get.dart';
import 'package:get/get.dart';

class AdvertisingSection extends StatelessWidget {
  AdvertisingSection({super.key});
  final AdsController adsController = Get.put(AdsController());
  final ProductsController productsController = Get.put(ProductsController());
  final CartController getcart = Get.put(CartController());
  final Categelectronic = Get.put(CategoriesController());

  final SubcategoryController subcategoryController =
      Get.put(SubcategoryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() {
            final List<AdsModel> adsList = adsController.adsList;
            final List<ProductsModel> productsList =
                productsController.productsList;
            final List<ProductsModel> categoryList =
                subcategoryController.categoryList;
            final List<ProductsModel> categoryList2 =
                subcategoryController.categoryList2;
            final List<ProductsModel> categoryList3 =
                subcategoryController.categoryList3;

            if (adsList.isEmpty || productsList.isEmpty) {
              print("??????????????????????????????????productsList");
              print(productsList);
              print("??????????????????????????????????adsList");
              print(adsList);
              print("??????????????????????????????????adsList");
              print(categoryList);
              return Container(); // Return empty container if either adsList or productsList is empty
            }
            return Column(
              children: [
                ItemBanner(
                  aspectR: 11 / 7,
                  imgurl: adsList[0].imgLink!,
                  urlhref: "de",
                  shopnow: adsList[0].title!,
                ),
                SizedBox(
                  height: 360,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 340,
                          width: MediaQuery.of(context).size.width / 2.33,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // First item
                              ItemBanner(
                                aspectR: 16 / 11,
                                imgurl: adsList[1].imgLink!,
                                urlhref: "l",
                                shopnow: adsList[1].title!,
                              ),
                              ItemBanner(
                                aspectR: 16 / 13,
                                imgurl: adsList[2].imgLink!,
                                urlhref: "me",
                                shopnow: adsList[2].title!,
                              ),
                              // Add some space between items
                              // Third item
                              // ItemBanner(imgurl: AssetsData.banr3, aspectR: 16 / 14),
                            ],
                          ),
                        ),
                      ),
                      // Add some space between the columns
                      SizedBox(
                        height: 338,
                        width: MediaQuery.of(context).size.width / 2.33,
                        child: Column(
                          children: [
                            ItemBanner(
                              aspectR: 9 / 17,
                              imgurl: adsList[4].imgLink!,
                              urlhref: "he",
                              shopnow: adsList[4].title!,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ItemBanner(
                  imgurl: adsList[6].imgLink!,
                  urlhref: "jk",
                  shopnow: adsList[6].title!,
                  aspectR: 16 / 5,
                ),
                const CardView(),
                ItemBanner(
                  imgurl: adsList[8].imgLink!,
                  urlhref: "ad",
                  shopnow: adsList[8].title!,
                  aspectR: 16 / 9,
                ),
                ItemBanner(
                  imgurl: adsList[3].imgLink!,
                  urlhref: "yo",
                  shopnow: adsList[3].title!,
                  aspectR: 16 / 9,
                ),
                SizedBox(
                  height: 360,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 340,
                          width: MediaQuery.of(context).size.width / 2.33,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // First item
                              ItemBanner(
                                aspectR: 16 / 11,
                                imgurl: adsList[5].imgLink!,
                                urlhref: "sp",
                                shopnow: adsList[5].title!,
                              ),
                              ItemBanner(
                                aspectR: 16 / 13,
                                imgurl: adsList[9].imgLink!,
                                urlhref: "io",
                                shopnow: adsList[9].title!,
                              ),
                              // Add some space between items
                              // Third item
                              // ItemBanner(imgurl: AssetsData.banr3, aspectR: 16 / 14),
                            ],
                          ),
                        ),
                      ),
                      // Add some space between the columns
                      SizedBox(
                        height: 338,
                        width: MediaQuery.of(context).size.width / 2.33,
                        child: Column(
                          children: [
                            ItemBanner(
                              aspectR: 9 / 17,
                              imgurl: adsList[7].imgLink!,
                              urlhref: "io",
                              shopnow: adsList[7].title!,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SubcategorySection(
                  categoryname: "toy",
                  subcategories: "Celebrate spring with outdoor fun",
                  productsitems: categoryList,
                ),
                CardView2(),
                ItemBanner(
                  aspectR: 11 / 9,
                  imgurl: adsList[10].imgLink!,
                  urlhref: "ca",
                  shopnow: adsList[10].title!,
                ),
                ItemBanner(
                  aspectR: 16 / 9,
                  imgurl: adsList[11].imgLink!,
                  urlhref: "la",
                  shopnow: adsList[11].title!,
                ),
                ItemBanner(
                  aspectR: 16 / 11,
                  imgurl: adsList[12].imgLink!,
                  urlhref: "op",
                  shopnow: adsList[12].title!,
                ),
                SizedBox(
                  height: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 338,
                        width: MediaQuery.of(context).size.width / 2.33,
                        child: Column(
                          children: [
                            ItemBanner(
                              aspectR: 9 / 17,
                              imgurl: adsList[13].imgLink!,
                              urlhref: "io",
                              shopnow: adsList[13].title!,
                            ),
                          ],
                        ),
                      ),
                      // Add some space between the columns
                      SizedBox(
                        height: 338,
                        width: MediaQuery.of(context).size.width / 2.33,
                        child: Column(
                          children: [
                            ItemBanner(
                              aspectR: 9 / 17,
                              imgurl: adsList[14].imgLink!,
                              urlhref: "cv",
                              shopnow: adsList[14].title!,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SubcategorySection(
                  categoryname: "More Sports",
                  subcategories: "outdoors",
                  productsitems: categoryList2,
                ),
                ItemBanner(
                  aspectR: 9 / 12,
                  imgurl: adsList[15].imgLink!,
                  urlhref: "op",
                  shopnow: adsList[15].title!,
                ),
                SubcategorySection(
                  categoryname: "More Super-low Prices",
                  subcategories: "Get Most Bang For your buck",
                  productsitems: categoryList3,
                ),
                CategorySection(),
                FeedbackSection()
                // ItemBanner(
                //   aspectR: 9 / 11,
                //   imgurl: adsList[16].imgLink!,
                //   urlhref: adsList[16].href,
                // )
              ],
            );
          }),
        ),
      ),
    );
  }
}
