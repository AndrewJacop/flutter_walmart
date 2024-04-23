import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_walmart/features/auth/controllers/signin_controller.dart';

import 'package:flutter_walmart/features/cart/logic/get_cart.dart';

import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:flutter_walmart/core/utils/assets.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HeadAppBar extends StatelessWidget {
  final CartController cartcontroller = Get.find<CartController>();
  final SignInController usersignin = Get.put(SignInController());

  HeadAppBar({super.key});

  @override
  // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hi , ${usersignin.user?.firstName ?? "guest"}",
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
              top: 1,
              left: 40,
              child: Obx(() {
                return cartcontroller.cartItems.isNotEmpty
                    ? CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.yellow,
                        child: Text(
                          "${cartcontroller.cartItems.length}",
                          style:
                              Styles.textStyle14.copyWith(color: Colors.black),
                        ),
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
