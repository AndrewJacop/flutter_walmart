import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_walmart/features/auth/controllers/signin_controller.dart';
import 'package:flutter_walmart/features/home/persentation/home_view.dart';
import 'package:flutter_walmart/common/widgets/custom_blue_button.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const HomeView()),
              icon: const Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(
                "assets/svg/walmart_logo_spark.svg",
                height: 60,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 20),
              Text("Create your Walmart account",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(fontSizeFactor: 1.5)),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("First name",
                        style: Theme.of(context).textTheme.labelLarge),
                    TextField(
                      controller: controller.firstName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Text("Last name",
                        style: Theme.of(context).textTheme.labelLarge),
                    TextField(
                      controller: controller.lastName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Text("Email",
                        style: Theme.of(context).textTheme.labelLarge),
                    TextField(
                      controller: controller.email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Text("Password",
                        style: Theme.of(context).textTheme.labelLarge),
                    TextField(
                      controller: controller.pass,
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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: CustomBlueButton(
                    title: "Sign up", onPress: () => {controller.signupme()}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
