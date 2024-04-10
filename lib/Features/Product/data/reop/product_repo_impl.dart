import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/Features/Product/data/reop/product_repo.dart';

import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

class ProductsIml implements ProductsRepo {
  final ApiService apiService;
  ProductsIml(this.apiService);

  @override
  Future<Either<Failure, List<ProductsModel>>> products() async {
    var data =
        await apiService.get(endPoint: 'products?limit=12') as List<dynamic>;

    print(data[0]);
    try {
      List<ProductsModel> prolist = [];

      for (var item in data) {
        try {
          prolist.add(ProductsModel.fromJson(item));
        } catch (e) {
          print(e);
        }
      }

      return right(prolist);
    } catch (e) {
      // Handle API call error
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductsModel>>> subcategory(
      Map<String, dynamic> query) async {
    var data =
        await apiService.get(endPoint: 'products', queryParameters: query);

    print(data[0]);
    try {
      List<ProductsModel> Subglist = [];

      for (var item in data) {
        try {
          Subglist.add(ProductsModel.fromJson(item));
        } catch (e) {}
      }

      return right(Subglist);
    } catch (e) {
      // Handle API call error
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}

// @override
// Future<Either<Failure, List<SocialModel>>> fetchurlsocial() async {
//   var data = await apiService.get(endPoint: 'social/') as List<dynamic>;
//   print("??????????????????????????????????");
//   print("?????????????data?????????????????????");
//   print(data[0]);
//   try {
//     List<SocialModel> urlsocial = [];

//     for (var item in data) {
//       try {
//         urlsocial.add(SocialModel.fromJson(item));
//       } catch (e) {
//         // Handle error if JSON parsing fails for an item
//         // You might want to log or ignore the error here
//       }
//     }

//     return right(urlsocial);
//   } catch (e) {
//     // Handle API call error
//     if (e is DioError) {
//       return left(ServerFailure.fromDioError(e));
//     }

//     return left(ServerFailure(e.toString()));
//   }
// }

