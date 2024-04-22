import 'package:dartz/dartz.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

abstract class CategoriesRepo {
  Future<Either<Failure, List<ProductsModel>>> fetchcategories(
      Map<String, dynamic> query);
}
