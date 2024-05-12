import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/pyment_app_bar.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  PaymentDetailsView({super.key, required this.prise});
  final String prise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}
