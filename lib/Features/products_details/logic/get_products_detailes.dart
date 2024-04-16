import 'package:flutter_walmart/Features/Product/data/reop/product_repo.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo_impl.dart';
import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';

import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:get/get.dart';

class ProductsidController extends GetxController {
  late ProductsRepo productsRepo; // Instantiate your repository

  final productsid =
      <ProductsDetailes>[].obs; // Observable to hold product details

  @override
  void onInit() {
    super.onInit();
    productsRepo = ProductsIml(ApiService());
  }

  Future<void> fetchproductsid(String query) async {
    try {
      // Fetch product details from repository
      final result = await productsRepo.productsdetailes(query);

      result.fold((failure) => Get.snackbar('Error', failure.toString()),
          (productDetails) => productsid.assignAll(productDetails));
    } catch (e) {
      // Handle errors
      print('Error fetching product details: $e');
      Get.snackbar('Error', 'Failed to fetch product details');
    }
  }
}
