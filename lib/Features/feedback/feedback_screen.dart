import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';
import 'package:get/get.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/svg/walmart_logo_spark.svg",
                height: 60,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 20),
              Text("Your feedback matters! Help us improve the Walmart app",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(fontSizeFactor: 1.5)),
              const SizedBox(height: 10),
              Text("Rate your experience",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 15),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  /// print(rating);
                },
              ),
              const SizedBox(height: 15),
              Container(
                height: 80,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: CustomBlueButton(
                    title: "Share wuth walmart", onPress: () => Get.back()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
