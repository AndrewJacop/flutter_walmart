import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRouter.kHomeView,
      getPages: AppRouter.routes,
      debugShowCheckedModeBanner: false,
      //   theme: ThemeData.dark().copyWith(
      //       scaffoldBackgroundColor: const Color(0xff100B20),
      //       textTheme:
      //           GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}
