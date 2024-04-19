import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Store Tools
              Text("Store Tools",
                  style: Theme.of(context).textTheme.headlineSmall),
              TextButton(
                  onPressed: () {}, child: const Text("Find a store nearby")),

              /// Popular Services
              /// Recommendedd for you
              /// Health & Wellness Services
              /// More Services
            ],
          ),
        ),
      ),
    );
  }
}
