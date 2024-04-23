import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_walmart/features/cart/logic/get_cart.dart';

import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:flutter_walmart/core/utils/assets.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HeadAppBar extends StatelessWidget {
  final CartController cartcontroller = Get.find<CartController>();
  HeadAppBar({super.key});

  @override
  // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hi, Yousef",
              style: Styles.textStyle14,
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          // Adjust the width of the leading widget
          Center(
            child: SvgPicture.asset(
              "assets/svg/walmart_logo_spark.svg",
              width: 40, // Adjust the width of the image
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          // Add space between the image and actions
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 13),
              child: IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.cartShopping,
                ), // Change the icon
                onPressed: () {
                  Get.toNamed(AppRouter.kCart);
                },
              ),
            ),
            Positioned(
              top: -2,
              left: 7,
              child: Obx(() {
                return cartcontroller.cartItems.isNotEmpty
                    ? Text(
                        "${cartcontroller.cartItems.length}",
                        style: Styles.textStyle18.copyWith(color: Colors.red),
                      )
                    : Container();
              }),
            ),
          ]),
        ],
      ),
    );

    // Center the title horizontally
  }
}
