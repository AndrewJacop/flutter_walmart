import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/auth/models/user_model.dart';
import 'package:flutter_walmart/features/home/persentation/home_view.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  final email = TextEditingController();
  final pass = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  // final phone = TextEditingController();

  UserModel? user;

  Future<void> signMeIn() async {
    final supabase = Supabase.instance.client;

    try {
      final data = await supabase
          .from('users')
          .select()
          .match({'email': email.text, 'password': pass.text});
      print("????????????????????/supabase");
      print(supabase);

      user = UserModel.fromMap(data[0]);

      Get.snackbar("Welcome back!", "Signed in succesfully.");

      Get.to(() => const HomeView());
    } catch (e) {
      Get.snackbar("X", "bad credentials");
    }
  }

  Future<void> signupme() async {
    final supabase = Supabase.instance.client;

    try {
      final data = await supabase.from('users').upsert(
        {
          'email': email.text,
          'password': pass.text,
          'firstName': firstName.text,
          'lastName': lastName.text,
          'id': "",
          'phoneNumber': "024568796",

          'isAdmin': false,
          'isSeller': false,
          'address': [],
          'paymentMethod': [],
          'userListsIds': [],
          'cart': [],

          // 'phone': phone.text,
        },
      );

      user = UserModel.fromMap(data.data);
      print("?????????????????user??????????????");
      print(user);
      Get.snackbar("Welcome!", "Signed up successfully.");

      Get.to(() => const HomeView());
    } catch (e) {
      Get.snackbar("X", "Sign up failed. Please try again.");
      print("???????????????????????????????");
      print(e);
    }
  }
}
