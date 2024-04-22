import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo_impl.dart';
import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/common/data/repo/catego_impl.dart';
import 'package:flutter_walmart/common/data/repo/catego_repo.dart';

import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  late CategoriesRepo categotyRepo; // Instantiate your repository

  final RxList<ProductsModel> productslist = <ProductsModel>[].obs;
  final RxBool toggleClick = false.obs;
  void toggle() {
    toggleClick.toggle(); // Toggle the value of toggleClick
  } // Observable to hold product details

  @override
  void onInit() {
    super.onInit();
    categotyRepo = categoryiml(ApiService());
  }

  Future<void> fetchcategories(Map<String, dynamic> query) async {
    try {
      // Fetch product details from repository
      final result = await categotyRepo.fetchcategories(query);

      result.fold(
        (failure) {
          // Handle failure
          Get.snackbar('Error', failure.toString());
        },
        (productList) {
          // Update productslist with fetched products
          productslist.assignAll(productList);
        },
      );
    } catch (e) {
      // Handle errors
      print('Error fetching product details: $e');
      Get.snackbar('Error', 'Failed to fetch product details');
    }
  }
}
