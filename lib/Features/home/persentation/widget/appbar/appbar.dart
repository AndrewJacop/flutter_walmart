import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/auth/views/auth_screen.dart';
import 'package:flutter_walmart/core/utils/assets.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HeadAppBar extends StatelessWidget {
  const HeadAppBar({super.key});

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
            child: Image.asset(
              AssetsData.logo,
              width: 60, // Adjust the width of the image
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          // Add space between the image and actions
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 13),
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.cartShopping,
              ), // Change the icon
              onPressed: () {
                // Add functionality for the shopping cart button
                Get.bottomSheet(
                  const AuthScreen(),
                  isScrollControlled: true,
                  clipBehavior: Clip.antiAlias,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

    // Center the title horizontally
  }
}
