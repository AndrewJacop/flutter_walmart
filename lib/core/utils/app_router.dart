import 'package:flutter_walmart/Features/auth/views/auth_screen.dart';
import 'package:flutter_walmart/Features/auth/views/login_screen.dart';
import 'package:flutter_walmart/Features/onboarding/view/onboarding_screen.dart';
import 'package:flutter_walmart/Features/onboarding/view/widgets/onboarding_page.dart';
import 'package:flutter_walmart/features/search/views/widgets/searchall.dart';
import 'package:flutter_walmart/features/search/views/search_screen.dart';
import 'package:flutter_walmart/features/Product/presentation/products.dart';
import 'package:flutter_walmart/features/cart/presentation/cart.dart';
import 'package:flutter_walmart/features/home/persentation/category_product.dart';
import 'package:flutter_walmart/features/home/persentation/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kCart = '/cart';
  static const kproductsview = '/ProductView';
  static const ksearch = '/SearchScreen';
  static const kallsearch = '/SearchAllScreen';
  static const klogin = '/AuthScreen';

  static final List<GetPage> routes = [
    GetPage(
      name: kHomeView,
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
      name: klogin,
      page: () => AuthScreen(),
    ),
    GetPage(
      name: ksearch,
      page: () => SearchScreen(),
    ),
    GetPage(
      name: kallsearch,
      page: () => SearchAllScreen(),
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
