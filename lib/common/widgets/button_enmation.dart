import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/features/cart/logic/get_cart.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:get/get.dart';

class AnimatedNumber extends StatelessWidget {
  final ProductsModel productsid;

  const AnimatedNumber({super.key, required this.productsid});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      width: MediaQuery.of(context).size.width / 2.3,
      height: 35,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                if (productsid.count.value > 0) {
                  cartController.removeFromCart(productsid);
                }
              },
              child: Text(
                '-',
                style: Styles.textStyle18.copyWith(),
              ),
            ),
            Obx(() {
              return Text(
                '${productsid.count.value}',
                style: Styles.textStyle18.copyWith(),
              );
            }),
            GestureDetector(
              onTap: () {
                cartController.addToCart(productsid);
              },
              child: const Text(
                '+',
                style: Styles.textStyle18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
