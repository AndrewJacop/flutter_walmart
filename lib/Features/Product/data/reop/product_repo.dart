import 'package:dartz/dartz.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';

import 'package:flutter_walmart/Features/products_details/data/model/products_detailes.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductsModel>>> products();
  Future<Either<Failure, List<ProductsModel>>> subcategory(
      Map<String, dynamic> query);
  Future<Either<Failure, ProductsDetailes>> productsdetailes(String query);
}
