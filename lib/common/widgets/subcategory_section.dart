import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/common/widget/subcategory_section.dart
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/common/widget/product_subcategory.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';

class SubcategorySection extends StatelessWidget {
  final String categoryname;
  final String subcategories;
  const SubcategorySection(
      {Key? key,
      required this.productsitems,
      required this.categoryname,
      required this.subcategories})
      : super(key: key);
  final List<ProductsModel> productsitems;
=======
import 'package:flutter_walmart/common/widgets/product_subcategory.dart';

class SubcategorySection extends StatefulWidget {
  const SubcategorySection({super.key});
>>>>>>> andrew:lib/common/widgets/subcategory_section.dart

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD:lib/common/widget/subcategory_section.dart
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 410,
=======
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 426,
>>>>>>> andrew:lib/common/widgets/subcategory_section.dart
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
<<<<<<< HEAD:lib/common/widget/subcategory_section.dart
                itemBuilder: (context, index) =>
                    SubProductCard(product: productsitems[index]),
                itemCount: productsitems.length,
=======
                itemBuilder: (context, index) => const SubProductCard(
                  imgurl:
                      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT2CveDtHqPTwST3VbNziXdwJe4dccKKnD8S18nQrLjFodGTF3H",
                  productId: "2177583020",
                  productName:
                      "PayLessHere 5 Inch Memory Foam Mattress/Cooling Gel Bamboo Charcoal Infused Mattress/Medium Firm Mattresses/CertiPUR-US Certified/Bed-in-a-Box/Pressure Relieving Full Size, White",
                  price: 299.99, // Example price
                  salePrice: 249.99, // Example sale price
                ),
                itemCount: 5,
>>>>>>> andrew:lib/common/widgets/subcategory_section.dart
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
                style: TextStyle(
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
