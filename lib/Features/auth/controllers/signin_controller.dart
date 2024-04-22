import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/auth/models/user_model.dart';
import 'package:flutter_walmart/features/home/persentation/home_view.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final pass = TextEditingController();
  UserModel? user;

  Future<void> signMeIn() async {
    final supabase = Supabase.instance.client;

    try {
      final data = await supabase
          .from('users')
          .select()
          .match({'email': email.text, 'password': pass.text});

      user = UserModel.fromMap(data[0]);

      Get.snackbar("Welcome back!", "Signed in succesfully.");

      Get.to(() => const HomeView());
    } catch (e) {
      Get.snackbar("X", "bad credentials");
    }
  }
}
