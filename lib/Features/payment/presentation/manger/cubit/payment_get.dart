import 'package:flutter_walmart/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:flutter_walmart/Features/payment/data/repos/checkout_repo.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/thank_you_view.dart';
import 'package:get/get.dart';

import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentController extends GetxController {
  final CheckoutRepo checkoutRepo;

  PaymentController(this.checkoutRepo);

  final _paymentState = Rx<PaymentState>(PaymentInitial());
  PaymentState get paymentState => _paymentState.value;
  String? sumamount;

  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    _paymentState.value = PaymentLoading();

    var data = await checkoutRepo.makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );

    data.fold(
      (l) => _paymentState.value = PaymentFailure(l.errMessage),
      (r) {
        _paymentState.value = PaymentSuccess();
        Get.offAll(ThankYouView(
          prise: sumamount!,
        )); // Replace current screen with ThankYouView
      },
    );
  }

  void executeStripePayment() {
    PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
      amount: sumamount!,
      currency: 'USD',
      cusomerId: 'cus_Q255OyNavYXy97',
    );
    makePayment(paymentIntentInputModel: paymentIntentInputModel);
  }

  void executePaypalPayment() {
    // Add logic for executing Paypal payment if needed
  }
}
