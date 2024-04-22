import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/common/data/repo/catego_repo.dart';
import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

class categoryiml implements CategoriesRepo {
  final ApiService apiService;
  categoryiml(this.apiService);
  @override
  Future<Either<Failure, List<ProductsModel>>> fetchcategories(
      Map<String, dynamic> query) async {
    var data =
        await apiService.get(endPoint: 'products', queryParameters: query);
    print("data???????????????????????????");
    print(data);
    try {
      List<ProductsModel> productslist = [];

      for (var item in data) {
        try {
          productslist.add(ProductsModel.fromJson(item));
        } catch (e) {}
      }

      return right(productslist);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
