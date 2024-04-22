import 'package:flutter/material.dart';
<<<<<<< HEAD
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
=======
import 'package:flutter_walmart/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://cexmgptxbtlgbmidmdxf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNleG1ncHR4YnRsZ2JtaWRtZHhmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTI3NDgwNTcsImV4cCI6MjAyODMyNDA1N30.qhvqIE9gf5QWU_qn6btDouKUooBmc3ZYlmEioc75rqU',
  );
  runApp(const App());
>>>>>>> andrew
}
