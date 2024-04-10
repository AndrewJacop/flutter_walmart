import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo_impl.dart';

import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  late ProductsRepo productsRepo; // Instantiate your repository

  final productsList =
      <ProductsModel>[].obs; // Observable list to hold ads data

  @override
  void onInit() {
    super.onInit();
    productsRepo = ProductsIml(ApiService());
    fetchproducts(); // Fetch ads data when controller initializes
  }

  void fetchproducts() async {
    // Fetch ads data from repository
    final result = await productsRepo.products();

    result.fold(
      (failure) => Get.snackbar('Error', failure.toString()),
      (prolist) =>
          productsList.assignAll(prolist), // Assign fetched data to adsList
    );
  }
}
