import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_walmart/Features/payment/presentation/views/thank_you_view.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/widgets/custom_credit_card.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/widgets/payment_buttom.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final String? prise = "0";
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // const SliverToBoxAdapter(
        //   child: PaymentMethodsListView(),
        // ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: PaymentButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                    } else {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ThankYouView(
                          prise: "0",
                        );
                      }));
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'Payment',
                ),
              )),
        ),
      ],
    );
  }
}
