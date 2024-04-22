import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo_impl.dart';

import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  late ProductsRepo productsRepo; // Instantiate your repository

  final productsList =
      <ProductsModel>[].obs; // Observable list to hold ads data
  // final RxBool isFavorite = false.obs;
  RxList<ProductsModel> favoratelist = <ProductsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    productsRepo = ProductsIml(ApiService());
    fetchproducts(); // Fetch ads data when controller initializes
  }

  void addmylist(ProductsModel product) {
    var existingProductIndex =
        favoratelist.indexWhere((item) => item.id == product.id);

    if (existingProductIndex != -1) {
      favoratelist[existingProductIndex].toggleFavorite();
      favoratelist.removeAt(existingProductIndex);
    } else {
      product.toggleFavorite();
      favoratelist.add(product);
    }

    // addToSum(product);
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
