import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_walmart/Features/auth/controllers/signin_controller.dart';
import 'package:flutter_walmart/Features/auth/views/login_screen.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/svg/walmart_logo_spark.svg",
                height: 60,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 20),
              Text("Sign in or create your account",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(fontSizeFactor: 1.5)),
              const SizedBox(height: 10),
              Text("Not sure if you have an account?",
                  style: Theme.of(context).textTheme.bodyLarge),
              Text("Enter your Email and we'll check for you.",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 25),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",
                        style: Theme.of(context).textTheme.labelLarge),
                    TextField(
                      controller: controller.email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: CustomBlueButton(
                  title: "Continue",

                  /// onPress: () => Get.to(() => const HomeView()),
                  onPress: () => Get.to(
                      () => const LoginScreen(
                            email: "andrewjacop@email.com",
                          ),
                      transition: Transition.downToUp),
                ),
              ),
              const Text(
                  "Securing your personal information is our priority.See our privacy measures.")
            ],
          ),
        ),
      ),
    );
  }
}
