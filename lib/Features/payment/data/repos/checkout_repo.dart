import 'package:dartz/dartz.dart';
import 'package:flutter_walmart/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:flutter_walmart/core/utils/failures.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
