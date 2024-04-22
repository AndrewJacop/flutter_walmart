import 'package:flutter_walmart/Features/Product/presentation/products.dart';
import 'package:flutter_walmart/Features/cart/presentation/cart.dart';
import 'package:flutter_walmart/Features/home/persentation/category_product.dart';
import 'package:flutter_walmart/Features/home/persentation/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kCart = '/cart';
  static const kproductsview = '/ProductView';

  static final List<GetPage> routes = [
    GetPage(
      name: kHomeView,
      page: () => const HomeView(),
    ),
    GetPage(
      name: kCart,
      page: () => Cart(),
    ),
    GetPage(
      name: kproductsview,
      page: () => ProductView(
        itemsview: [],
      ),
    ),
    // Define other routes if needed
  ];
}
