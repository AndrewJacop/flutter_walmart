import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/search/controllers/department_controller.dart';
import 'package:flutter_walmart/features/search/logic/get_products_search.dart';
import 'package:flutter_walmart/Features/search/views/widgets/department_horizontal_tile.dart';
import 'package:get/get.dart';
// import 'package:flutter_walmart/features/search/logic/get_products_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final depController = Get.put(DepartmentController());
    final searchcontroller = Get.put(SearchContList());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("All Departments",
            style: Theme.of(context).textTheme.headlineSmall),
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
                return DepartmentHorizontalTile(
                  title: product.title,
                  imgLink: product.images[0],
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