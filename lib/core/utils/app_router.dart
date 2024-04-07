import 'package:flutter_walmart/Features/home/persentation/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppRouter {
  static const kHomeView = '/';

  static final List<GetPage> routes = [
    GetPage(
      name: kHomeView,
      page: () => const HomeView(),
    ),
    // Define other routes if needed
  ];
}
