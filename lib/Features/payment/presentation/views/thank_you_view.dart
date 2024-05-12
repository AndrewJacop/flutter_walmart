import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/pyment_app_bar.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key, required this.prise});
  final String prise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16),
          child: ThankYouViewBody(
            prise: prise,
          )),
    );
  }
}
