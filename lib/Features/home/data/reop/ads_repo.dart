import 'package:dartz/dartz.dart';
import 'package:flutter_walmart/features/home/data/model/ads_model.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

abstract class AdsRepo {
  Future<Either<Failure, List<AdsModel>>> adslunch();
}
