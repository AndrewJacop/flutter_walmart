// import 'package:flutter/material.dart';
// import 'package:flutter_walmart/features/search/controllers/department_controller.dart';
// import 'package:flutter_walmart/features/search/views/widgets/department_horizontal_tile.dart';
// import 'package:get/get.dart';

// class SearchScreen extends StatelessWidget {
//   const SearchScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(DepartmentController());

//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text("All Departments",
//             style: Theme.of(context).textTheme.headlineSmall),
//       ),
//       body: ListView.builder(
//         itemCount: controller.departmentList.length,
//         itemBuilder: (_, index) => DepartmentHorizontalTile(
//           title: controller.departmentList[index].title,
//           imgLink: controller.departmentList[index].imgLink,
//         ),
//       ),
//     );
//   }
// }
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/search/controllers/department_controller.dart';
import 'package:flutter_walmart/Features/search/logic/get_products_search.dart';
import 'package:flutter_walmart/Features/search/views/widgets/department_horizontal_tile.dart';
import 'package:get/get.dart';
// import 'package:flutter_walmart/features/search/logic/get_products_search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DepartmentController());
    final searchcontroller = Get.put(SearchContList());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("All Departments",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Obx(() {
        if (searchcontroller.searchslist.isNotEmpty) {
          return ListView.builder(
            itemCount: searchcontroller.searchslist.length,
            itemBuilder: (_, index) {
              final product = searchcontroller.searchslist[index];
              // Use the product details to build your UI widgets
              return DepartmentHorizontalTile(
                title: product.title,
                imgLink: product.images[0],
              );
            },
          );
          }
          
        } else {
          return ListView.builder(
            itemCount: DepartmentController.departmentList.length,
            itemBuilder: (_, index) {
              final product = searchController.searchslist[index];
              // Use the product details to build your UI widgets
              return DepartmentHorizontalTile(
                title: product.title,
                imgLink: product.imgLink,
              );
            },
          );
        }
      
      
    );
  }
}
