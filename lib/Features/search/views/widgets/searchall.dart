import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/presentation/products.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_seacrch.dart';
import 'package:flutter_walmart/features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/Features/products_details/logic/get_products_detailes.dart';
import 'package:flutter_walmart/Features/search/controllers/department_controller.dart';
import 'package:flutter_walmart/features/search/logic/get_products_search.dart';
import 'package:flutter_walmart/Features/search/views/widgets/department_horizontal_tile.dart';
import 'package:get/get.dart';
// import 'package:flutter_walmart/features/search/logic/get_products_search.dart';

class SearchAllScreen extends StatelessWidget {
  const SearchAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final depController = Get.put(DepartmentController());
    final searchcontroller = Get.put(SearchContList());

    return Scaffold(
      appBar: AppBar(
        title: CustomSearch(),
      ),
      body: Obx(() => searchcontroller.searchslist.isEmpty
          ? ListView.builder(
              itemCount: depController.departmentList.length,
              itemBuilder: (_, index) {
                final dep = depController.departmentList[index];
                // Use the product details to build your UI widgets
                return DepartmentHorizontalTile(
                  title: dep.title,
                  imgLink: dep.imgLink,
                );
              },
            )
          : ListView.builder(
              itemCount: searchcontroller.searchslist.length,
              itemBuilder: (_, index) {
                final product = searchcontroller.searchslist[index];
                // Use the product details to build your UI widgets
                return InkWell(
                  onTap: () async {
                    final productsController = Get.put(ProductsidController());
                    await productsController.fetchproductsid(product.id);

                    final ProductsDetailes productDetails =
                        productsController.productsid.value;

                    print("////////////////////////productsid");
                    print(productDetails);

                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                20), // Adjust the radius for the top-left corner
                            topRight: Radius.circular(
                                20), // Adjust the radius for the top-right corner
                          ),
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey, // Border color
                              width: 3, // Border width
                            ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 1.1,
                        child: Products(
                          productsid: product,
                          productdetailes: productDetails,
                        ),
                      ),
                    );
                    // await Get.to(Products());
                  },
                  child: DepartmentHorizontalTile(
                    title: product.title,
                    imgLink: product.images[0],
                  ),
                );
              },
            )),
    );
  }
}



              /// return ListView.builder(
              ///   itemCount: DepartmentController.departmentList.length,
              ///   itemBuilder: (_, index) {
              ///     final product = searchController.searchslist[index];
              ///     // Use the product details to build your UI widgets
              ///     return DepartmentHorizontalTile(
              ///       title: product.title,
              ///       imgLink: product.imgLink,
              ///     );
              ///   },
              /// );