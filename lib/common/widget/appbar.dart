import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/assets.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(50); // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 40, // Adjust the height of the app bar
      backgroundColor: Colors.blue, // Set the background color of the app bar
      elevation: 0, // Remove the shadow
      leading: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          "Hi, Yousef",
          style: Styles.textStyle14,
        ), // Customize the leading widget
      ),
      leadingWidth: 100,
      // Adjust the width of the leading widget
      title: Center(
        child: Image.asset(
          AssetsData.logo,
          width: 60, // Adjust the width of the image
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 13),
          child: IconButton(
            icon:
                const FaIcon(FontAwesomeIcons.cartShopping), // Change the icon
            onPressed: () {
              // Add functionality for the shopping cart button
            },
          ),
        )
      ],

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Row(
      //       // Use a Row to align the title and actions horizontally
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.start,

      //       children: [
      //         Image.asset(
      //           "assets/image/loginlogo.png",
      //           width: 60, // Adjust the width of the image
      //         ),
      //         const SizedBox(
      //           width: 10,
      //         ),
      //         IconButton(
      //           icon: const FaIcon(
      //               FontAwesomeIcons.cartShopping), // Change the icon
      //           onPressed: () {
      //             // Add functionality for the shopping cart button
      //           },
      //         )
      //       ],
      //     ),
      //   ],
      // ),
    );
    // Center the title horizontally
  }
}
