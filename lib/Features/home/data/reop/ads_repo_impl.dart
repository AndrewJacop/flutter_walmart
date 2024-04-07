import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:flutter_walmart/Features/home/data/model/ads_model.dart';
import 'package:flutter_walmart/Features/home/data/reop/ads_repo.dart';
import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

class AdsImpl implements AdsRepo {
  final ApiService apiService;
  AdsImpl(this.apiService);

  @override
  Future<Either<Failure, List<AdsModel>>> adslunch() async {
    var data = await apiService.get(endPoint: 'ads') as List<dynamic>;
    // print("??????????????????????????????????");
    // print("?????????????data?????????????????????");
    // print(data[0]);
    try {
      List<AdsModel> adslist = [];

      for (var item in data) {
        try {
          adslist.add(AdsModel.fromJson(item));
        } catch (e) {
          // Handle error if JSON parsing fails for an item
          // You might want to log or ignore the error here
        }
      }

      return right(adslist);
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

  
