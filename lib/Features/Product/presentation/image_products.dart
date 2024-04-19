import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_walmart/Features/Product/logic/get_products.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProductCarousel extends StatelessWidget {
  final List<String>? listimage;
  final control = Get.put(ProductcurController());

  ProductCarousel({super.key, this.listimage});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.0, // Set aspect ratio for images
          enlargeCenterPage: false, // Center item will be larger
          autoPlay: false, // Auto play the carousel
          // Duration for auto play
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          // Animation duration for auto play
          pauseAutoPlayOnTouch:
              true, // Pause auto play when user touches the carousel
          viewportFraction: 0.8,
          onPageChanged: (index, _) => control.updatePageIndicator(
              index), // Fraction of the viewport occupied by each item
        ),
        items: listimage?.map((url) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Image.network(
                      url, // Use the current image URL
                      fit: BoxFit.cover, // Set image fit to cover the container
                      width: MediaQuery.of(context)
                          .size
                          .width, // Set maximum width for the image
                      height: 1000, // Set maximum height for the image
                    ),
                  ),
                ),
              );
            }).toList() ??
            [],
      ),
      SizedBox(
        height: 10,
      ),
      Obx(
        () => Column(
          children: [
            // Your image row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  GestureDetector(
                    onTap: () {
                      // Update the selected index when the circle is tapped
                      control.carousalCurrentIndex.value = i;
                    },
                    child: Container(
                      margin: EdgeInsets.all(3),
                      width: 20,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1, color: Colors.black),
                        color: control.carousalCurrentIndex.value == i
                            ? Colors.grey
                            : Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            // Optional: Add some spacing between the circles and the images
          ],
        ),
      )
    ]);
  }
}
