import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/logic/products_get.dart';
import 'package:flutter_walmart/Features/Product/logic/subcategory_get.dart';
import 'package:flutter_walmart/Features/cart/logic/get_cart.dart';
import 'package:flutter_walmart/Features/home/data/model/ads_model.dart';
import 'package:flutter_walmart/Features/home/logic/get_ads.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/item_banner_body_home.dart';
import 'package:flutter_walmart/common/data/category_get.dart';
import 'package:flutter_walmart/common/widget/cardview.dart';
import 'package:flutter_walmart/common/widget/category_section.dart';
import 'package:flutter_walmart/common/widget/subcategory_section.dart';
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
                  urlhref: adsList[0].href,
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
                                urlhref: adsList[1].href,
                                shopnow: adsList[1].title!,
                              ),
                              ItemBanner(
                                aspectR: 16 / 13,
                                imgurl: adsList[2].imgLink!,
                                urlhref: adsList[2].href,
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
                              urlhref: adsList[4].href,
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
                  urlhref: adsList[6].href,
                  shopnow: adsList[6].title!,
                  aspectR: 16 / 5,
                ),
                CardView(),
                ItemBanner(
                  imgurl: adsList[8].imgLink!,
                  urlhref: adsList[8].href,
                  shopnow: adsList[8].title!,
                  aspectR: 16 / 9,
                ),
                ItemBanner(
                  imgurl: adsList[3].imgLink!,
                  urlhref: adsList[3].href,
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
                                urlhref: adsList[5].href,
                                shopnow: adsList[5].title!,
                              ),
                              ItemBanner(
                                aspectR: 16 / 13,
                                imgurl: adsList[9].imgLink!,
                                urlhref: adsList[9].href,
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
                              urlhref: adsList[7].href,
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
                  urlhref: adsList[10].href,
                  shopnow: adsList[10].title!,
                ),
                ItemBanner(
                  aspectR: 16 / 9,
                  imgurl: adsList[11].imgLink!,
                  urlhref: adsList[11].href,
                  shopnow: adsList[11].title!,
                ),
                ItemBanner(
                  aspectR: 16 / 11,
                  imgurl: adsList[12].imgLink!,
                  urlhref: adsList[12].href,
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
                              urlhref: adsList[13].href,
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
                              urlhref: adsList[14].href,
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
                  urlhref: adsList[15].href,
                  shopnow: adsList[15].title!,
                ),
                SubcategorySection(
                  categoryname: "More Super-low Prices",
                  subcategories: "Get Most Bang For your buck",
                  productsitems: categoryList3,
                ),
                categorySection()
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
