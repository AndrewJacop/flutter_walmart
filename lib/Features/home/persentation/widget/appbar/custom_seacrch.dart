import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/data/category_get.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      child: TextField(
        onChanged: (value) async {
          final categecontrol = Get.put(CategoriesController());
          await categecontrol.fetchcategories({"title": value});
        },
        onTap: () async {
          // await Get.to(ProductView(
          //   itemsview: productlist,
          // ));
          final categoriesController = Get.put(CategoriesController());
          final List productlist = categoriesController.productslist.value;
          await Get.toNamed(AppRouter.kproductsview, arguments: productlist);
        },
        decoration: InputDecoration(
          hintText: 'Search...', // Add placehaolder text
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          filled: true,
          fillColor: Colors.white,

          suffixIcon: IconButton(
            icon: const Icon(
              FontAwesomeIcons.barcode,
              weight: 1,
              size: 12,
            ), // Change the search icon
            onPressed: () {
              // Add functionality for search
            },
          ),
        ),
      ),
    );
  }
}
