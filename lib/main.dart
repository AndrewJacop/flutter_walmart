import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_walmart/app.dart';
import 'package:flutter_walmart/core/utils/api_keys.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = ApiKeys.puplishableKey;
  await Supabase.initialize(
    url: 'https://cexmgptxbtlgbmidmdxf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNleG1ncHR4YnRsZ2JtaWRtZHhmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTI3NDgwNTcsImV4cCI6MjAyODMyNDA1N30.qhvqIE9gf5QWU_qn6btDouKUooBmc3ZYlmEioc75rqU',
  );
  runApp(const App());
}
