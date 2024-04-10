import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo_impl.dart';

import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:get/get.dart';

class SubcategoryController extends GetxController {
  late ProductsRepo productsRepo; // Instantiate your repository

  final categoryList =
      <ProductsModel>[].obs; // Observable list to hold ads data
  final categoryList2 = <ProductsModel>[].obs;
  final categoryList3 = <ProductsModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    productsRepo = ProductsIml(ApiService());
    fetchcategory({"title": "toy"});
    fetchcategory2({"title": "sports"});
    fetchcategory3({"title": "home"});
    // Fetch ads data when controller initializes
  }

  void fetchcategory(Map<String, dynamic> query) async {
    // Fetch ads data from repository
    final result = await productsRepo.subcategory(query);

    result.fold(
      (failure) => Get.snackbar('Error', failure.toString()),
      (prolist) =>
          categoryList.assignAll(prolist), // Assign fetched data to adsList
    );
  }

  void fetchcategory2(Map<String, dynamic> query) async {
    // Fetch ads data from repository
    final result = await productsRepo.subcategory(query);

    result.fold(
      (failure) => Get.snackbar('Error', failure.toString()),
      (prolist) =>
          categoryList2.assignAll(prolist), // Assign fetched data to adsList
    );
  }

  void fetchcategory3(Map<String, dynamic> query) async {
    // Fetch ads data from repository
    final result = await productsRepo.subcategory(query);

    result.fold(
      (failure) => Get.snackbar('Error', failure.toString()),
      (prolist) =>
          categoryList3.assignAll(prolist), // Assign fetched data to adsList
    );
  }
}
