import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/widgets/product_subcategory.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:get/get.dart';

class SubcategorySection extends StatelessWidget {
  final String categoryname;
  final String subcategories;
  const SubcategorySection(
      {super.key,
      required this.productsitems,
      required this.categoryname,
      required this.subcategories});
  final List<ProductsModel> productsitems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 410,
        width: 389,
        child: Column(
          children: [
            HeadSection(
              productsitemsview: productsitems,
              catname: subcategories,
              subcat: categoryname,
            ),
            FooterSection(
              productsitems: productsitems,
            )
          ],
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
    required this.productsitems,
  });
  final List<ProductsModel> productsitems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    SubProductCard(product: productsitems[index]),
                itemCount: productsitems.length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeadSection extends StatelessWidget {
  final List<ProductsModel> productsitemsview;
  final String catname;
  final String subcat;
  const HeadSection({
    super.key,
    required this.catname,
    required this.subcat,
    required this.productsitemsview,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                catname, // Replace with your category name
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subcat, // Replace with your subcategories text
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 7,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRouter.kproductsview,
                  arguments: productsitemsview);
            },
            child: const Text(
              "View All",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue, // You can adjust the color
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
