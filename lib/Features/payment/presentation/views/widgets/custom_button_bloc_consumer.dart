import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_walmart/Features/payment/data/models/payment_intent_input_model.dart';
import 'package:flutter_walmart/Features/payment/presentation/manger/cubit/payment_get.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/thank_you_view.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/widgets/payment_buttom.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
    required this.isPaypal,
  });

  final bool isPaypal;
  @override
  Widget build(BuildContext context) {
    final PaymentController paymentController = Get.find();

    return Obx(() {
      return PaymentButton(
        onTap: () {
          if (isPaypal) {
            // paymentController.executePaypalPayment();
            // Uncomment this if you have logic for executing Paypal payment
          } else {
            paymentController.executeStripePayment();
          }
        },
        isLoading: paymentController.paymentState is PaymentLoading,
        text: 'Continue',
      );
    });
  }
}

  

  // void exceutePaypalPayment(BuildContext context,
  //     ({AmountModel amount, ItemListModel itemList}) transctionsData) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (BuildContext context) => PaypalCheckoutView(
  //       sandboxMode: true,
  //       clientId: ApiKeys.clientID,
  //       // secretKey: ApiKeys.paypalSecretKey,
  //       transactions: [
  //         {
  //           "amount": transctionsData.amount.toJson(),
  //           "description": "The payment transaction description.",
  //           "item_list": transctionsData.itemList.toJson(),
  //         }
  //       ],
  //       note: "Contact us for any questions on your order.",
  //       onSuccess: (Map params) async {
  //         log("onSuccess: $params");
  //         Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) {
  //             return const ThankYouView();
  //           }),
  //           (route) {
  //             if (route.settings.name == '/') {
  //               return true;
  //             } else {
  //               return false;
  //             }
  //           },
  //         );
  //       },
  //       onError: (error) {
  //         SnackBar snackBar = SnackBar(content: Text(error.toString()));
  //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //         Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) {
  //             return const MyCartView();
  //           }),
  //           (route) {
  //             return false;
  //           },
  //         );
  //       },
  //       onCancel: () {
  //         print('cancelled:');
  //         Navigator.pop(context);
  //       },
  //     ),
  //   ));
  // }

