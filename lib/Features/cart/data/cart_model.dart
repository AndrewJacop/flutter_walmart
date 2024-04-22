import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CartModel {
  String id;
  RxInt? quantity = 0.obs;
  ProductsModel product;
  CartModel(this.id, {required this.product, required int initialQuantity});
  Future<dynamic> getId() async {
    return id;
  }
}
