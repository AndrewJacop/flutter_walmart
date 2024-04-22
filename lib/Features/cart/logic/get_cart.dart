// class CartController extends GetxController {
//   var cartItems = [].obs;

//   void addToCart(ProductsModel product) {
//     cartItems.add(product);
//   }

//   void removeFromCart(ProductsModel product) {
//     print("//////////////////////cartItems");
//     print(cartItems);
//     cartItems.remove(product);
//   }
// }

import 'package:flutter_walmart/features/cart/data/cart_model.dart';
import 'package:flutter_walmart/features/cart/presentation/cart.dart';
import 'package:get/get.dart';
import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';

// class CartController extends GetxController {
//   var cartItems = [].obs;

//   void addToCart(ProductsModel product) {
//     cartItems.add(product);
//   }

//   void removeFromCart(ProductsModel product) {
//     print("//////////////////////cartItems");
//     print(cartItems);
//     cartItems.remove(product);
//   }
// }

class CartController extends GetxController {
  RxList<ProductsModel> cartItems = <ProductsModel>[].obs;
  var sum = 0.0.obs;
  var sumsale = 0.0.obs;
  var checked = true.obs; // Change here

  void addToCart(ProductsModel product) {
    var existingProductIndex =
        cartItems.indexWhere((item) => item.id == product.id);

    if (existingProductIndex != -1) {
      cartItems[existingProductIndex].increase();
    } else {
      product.increase();
      cartItems.add(product);
    }
    sum.value += double.parse(product.originalPrice);
    // addToSum(product);
  }

  void removeFromCart(ProductsModel product) {
    var existingProductIndex =
        cartItems.indexWhere((item) => item.id == product.id);

    if (existingProductIndex != -1) {
      cartItems[existingProductIndex].decrease();
    }
    if (cartItems[existingProductIndex].count.value == 0) {
      cartItems.removeAt(existingProductIndex);
    }
    sum.value -= double.parse(product.originalPrice);
  }
  // removeFromSum(product);
}

// int getProductQuantity(ProductsModel product) {
//   // Find the index of the product in the cart
//   var item = cartItems.firstWhere(
//     (item) => item['product'].id == product.id,
//   );

//   // If the product exists, return its quantity, otherwise return 0
//   return item['quantity'];
// }

double getTotalPrice() {
  double totalPrice = 0.0;
  // for (var item in cartItems) {
  //   final product = item['product'] as ProductsModel;
  //   final quantity = item['quantity'] as int;
  //   final originalPrice = double.parse(product.originalPrice);
  //   totalPrice += originalPrice * quantity;
  // }
  return totalPrice;
}

double getTotalsale() {
  double totalPrice = 0.0;
  // for (var item in cartItems) {
  //   final product = item['product'] as ProductsModel;
  //   final quantity = item['quantity'] as int;
  //   final salePrice = product.discount;
  //   totalPrice += salePrice * quantity;
  // }
  return totalPrice;
}

double removetotalcart(ProductsModel product) {
  double totalPrice = 0.0;
  // for (var item in cartItems) {
  //   final product = item['product'] as ProductsModel;
  //   final quantity = item['quantity'] as int;
  //   final originalPrice = double.parse(product.originalPrice);
  //   totalPrice += originalPrice * quantity;
  //   double sumtotal = getTotalPrice();
  //   totalPrice = sumtotal - totalPrice;
  // }
  return totalPrice;
}

  // void addToSum(ProductsModel product) {
  //   final originalPrice = double.parse(product.originalPrice);
  //   final salePrice = product.discount;
  //   sum.value += originalPrice;
  //   sumsale.value += salePrice;
  // }

  // void removeFromSum(ProductsModel product) {
  //   final originalPrice = double.parse(product.originalPrice);
  //   final salePrice = product.discount;
  //   sum.value -= originalPrice;
  //   sumsale.value -= salePrice;
  // }





// class CartController extends GetxController {
//   var cartItems = <Map<String, dynamic>>[].obs;
  
//   void addToCart(ProductsModel product) {
//     // Check if the product already exists in the cart
//     var existingProductIndex =
//         cartItems.indexWhere((item) => item['product'] == product);

//     if (existingProductIndex != -1) {
//       // If the product already exists, increment its quantity
//       cartItems[existingProductIndex]['quantity'] += 1;
//     } else {
//       // If the product doesn't exist, add it to the cart with quantity 1
//       cartItems.add({'product': product, 'quantity': 1});
//     }
//   }

//   void removeFromCart(ProductsModel product) {
//     // Find the index of the product in the cart
//     var existingProductIndex =
//         cartItems.indexWhere((item) => item['product'] == product);

//     if (existingProductIndex != -1) {
//       // If the product exists, decrement its quantity
//       cartItems[existingProductIndex]['quantity'] -= 1;
//       // If the quantity becomes zero, remove the product from the cart
//       if (cartItems[existingProductIndex]['quantity'] == 0) {
//         cartItems.removeAt(existingProductIndex);
//       }
//     }
//   }

//   void addToSum(ProductsModel product) {
//     final originalPrice = double.parse(product.originalPrice);
//     final salePrice = product.discount;
//     sum.value += originalPrice;
//     sumsale.value += salePrice;
//   }

//   void removeFromSum(ProductsModel product) {
//     final originalPrice = double.parse(product.originalPrice);
//     final salePrice = product.discount;
//     sum.value -= originalPrice;
//     sumsale.value -= salePrice;
//   }
//   // double getTotalsale() {
//   //   double totalPrice = 0.0;
//   //   for (var item in cartItems) {
//   //     final product = item['product'] as ProductsModel;
//   //     final quantity = item['quantity'] as int;
//   //     final salePrice = product.discount;
//   //     totalPrice += salePrice * quantity;
//   //   }
//   //   return totalPrice;
//   // }
// }

//class AnimatedNumber extends StatelessWidget {
//   final ProductsModel productsid;
//   AnimatedNumber({required this.productsid});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       final cartController = Get.find<CartController>();
//       final numberOfItems = cartController.cartItems
//           .where((item) => item['product'] == productsid)
//           .toList()
//           .length;

//       return InkWell(
//         onTap: () {
//           if (numberOfItems > 0) {
//             cartController.removeFromCart(productsid);
//           } else {
//             cartController.addToCart(productsid);
//           }
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: Colors.white, width: 2),
//           ),
//           width: MediaQuery.of(context).size.width / 2.3,
//           height: 30,
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     if (numberOfItems > 0) {
//                       cartController.removeFromCart(productsid);
//                     }
//                   },
//                   child: Text(
//                     '-',
//                     style: Styles.textStyle18.copyWith(),
//                   ),
//                 ),
//                 Text(
//                   '$numberOfItems',
//                   style: Styles.textStyle18.copyWith(),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     cartController.addToCart(productsid);
//                   },
//                   child: Text(
//                     '+',
//                     style: Styles.textStyle18,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }

// class CartController extends GetxController {
//   var cartItems = <Map<String, dynamic>>[].obs;

//   void addToCart(ProductsModel product) {
//     // Check if the product already exists in the cart
//     var existingProductIndex =
//         cartItems.indexWhere((item) => item['product'] == product);

//     if (existingProductIndex != -1) {
//       // If the product already exists, increment its quantity
//       cartItems[existingProductIndex]['quantity'] += 1;
//     } else {
//       // If the product doesn't exist, add it to the cart with quantity 1
//       cartItems.add({'product': product, 'quantity': 1});
//     }
//   }

//   void removeFromCart(ProductsModel product) {
//     // Find the index of the product in the cart
//     var existingProductIndex =
//         cartItems.indexWhere((item) => item['product'] == product);

//     if (existingProductIndex != -1) {
//       // If the product exists, decrement its quantity
//       cartItems[existingProductIndex]['quantity'] -= 1;
//       // If the quantity becomes zero, remove the product from the cart
//       if (cartItems[existingProductIndex]['quantity'] == 0) {
//         cartItems.removeAt(existingProductIndex);
//       }
//     }
//   }
// }