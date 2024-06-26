import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:flutter_walmart/features/Product/logic/products_get.dart';

import 'package:flutter_walmart/Features/home/persentation/category_product.dart';
import 'package:flutter_walmart/Features/mylists/view/widgets/backdrop_card.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';

import 'package:get/get.dart';

class ListsTap extends StatelessWidget {
  ProductsController favoratecontrol = Get.find<ProductsController>();
  ListsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (favoratecontrol.favoratelist.isEmpty) {
          return SingleChildScrollView(
            child: Column(
              children: [
                /// Background Tile
                const SizedBox(height: 40),
                // Replace BackdropCard with your custom widget or widget of choice
                BackdropCard(
                  height: 200,
                  svgLink:
                      "https://i5.walmartimages.com/dfw/4ff9c6c9-a9ea/k2-_c005f233-4ecc-4d99-beb8-6e7faf7b241d.v1.svg",
                  text: "Sign in to see your saved lists",
                ),
                const SizedBox(height: 20),

                /// sign in Button
                CustomBlueButton(
                  title: "Sign in or create account",
                  onPress: () {
                    // Get.toNamed(AppRouter.klogin);
                  },
                )
              ],
            ),
          );
        } else {
          var items = favoratecontrol.favoratelist.toList();
          return ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ProductsCategoryShow(itemsproduct: items[index]);
            },
          );
        }
      }),
    );
  }
}
      
      
      
      
      
//        Obx(() {
//         var items = favoratecontrol.favoratelist.value;

//         return ListView.builder(
//           itemCount: items.length,
//           scrollDirection: Axis.vertical,
//           itemBuilder: (context, index) {
//             return ProductsCategoryShow(itemsproduct: items[index]);
//           },
//         );
//       }),
//     );
//   }
// }
//     //
    // SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       /// Background TIle
    //       const SizedBox(height: 40),
    //       const BackdropCard(
    //         height: 200,
    //         svgLink:
    //             "https://i5.walmartimages.com/dfw/4ff9c6c9-a9ea/k2-_c005f233-4ecc-4d99-beb8-6e7faf7b241d.v1.svg",
    //         text: "Sign in to see your saved lists",
    //       ),
    //       const SizedBox(height: 20),

    //       /// sign in Button
    //       CustomBlueButton(
    //         title: "Sign in or create account",
    //         onPress: () {},
    //       )
    //     ],
    //   ),
    // ));
  
