import 'package:flutter_walmart/Features/Product/presentation/products.dart';
import 'package:flutter_walmart/Features/cart/presentation/cart.dart';
import 'package:flutter_walmart/Features/home/persentation/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kCart = '/cart';

  static final List<GetPage> routes = [
    GetPage(
      name: kHomeView,
      page: () => const HomeView(),
    ),
    GetPage(
      name: kCart,
      page: () => const Cart(),
    ),
    // Define other routes if needed
  ];
}
