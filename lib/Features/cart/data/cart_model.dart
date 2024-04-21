import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CartModel {
  RxInt quantity = 0.obs;
  ProductsModel product;

  CartModel({required this.product, required int initialQuantity}) {
    quantity.value = initialQuantity;
  }

  int getQuantity() {
    return quantity.value;
  }
}
