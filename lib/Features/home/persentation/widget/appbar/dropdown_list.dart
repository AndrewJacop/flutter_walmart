import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class AddressContainer extends StatelessWidget {
  final String title;

  const AddressContainer({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      title,
                      // "Add an address for shipping",
                      style: Styles.textStyle16,
                    ),
                  ],
                ),
              ),
              const Text(
                "Sacramento, CA 95829",
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality for the button
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(62),
                    ),
                  ),
                  child: const Text(
                    "Add Address",
                    style: Styles.textStyle18,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShippingInfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(
                  "https://i5.walmartimages.com/dfw/4ff9c6c9-72b4/k2-_9499512b-2be2-41e1-82cf-6380e5718064.v1.png",
                ),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                  width: 10), // Add some spacing between the avatar and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2-day shipping, dropped off by FedEx or UPS.\n Orders over \$35 ship free!",
                      style: Styles.textStyle14.copyWith(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeliveryContainer extends StatelessWidget {
  const DeliveryContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 350,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.network(
                'https://i5.walmartimages.com/dfw/4ff9c6c9-14f0/k2-_8ce34043-6050-4f39-afb2-3e76a554f8a3.v1.png',
                width: 16,
                height: 16,
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sacramento Supercenter', style: Styles.textStyle16),
                  Text('8915 GERBER ROAD, Sacramento, CA 95829',
                      style: Styles.textStyle14),
                ],
              ),
              const Spacer(),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.all(15),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       const Center(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Icon(
        //               Icons.home,
        //               size: 20,
        //             ),
        //             SizedBox(width: 8),
        //             Text(
        //               "  Sacramento Supercenter",
        //               style: Styles.textStyle16,
        //             ),
        //           ],
        //         ),
        //       ),
        //       const Text(
        //         "8915 GERBER ROAD, Sacramento, CA 95829",
        //         style: Styles.textStyle14,
        //       ),
        //       const SizedBox(
        //         height: 5,
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class FulfillmentAddressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        width: 350,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Reserve a pickup time', style: Styles.textStyle16),
            const SizedBox(height: 8),
            const Text('To see pickup times, please sign in.',
                style: Styles.textStyle14),
            SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(62),
                  ),
                ),
                child: const Text(
                  "Sign In ",
                  style: Styles.textStyle18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
