import 'package:flutter/material.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://i5.walmartimages.com/dfw/4ff9c6c9-7eee/k2-_159bef62-0e0d-4ad1-be64-abe3f0a9f83e.v1.png?odnHeight=52&odnWidth=67&odnBg=&odnDynImageQuality=70',
                    width: 67,
                    height: 52,
                    fit: BoxFit.contain,
                  ),
                  Column(
                    children: [
                      const Text('Get a personalized experience',
                          style: Styles.textStyle14),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 22.0, vertical: 7.0),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adjust the radius as needed
                                side: const BorderSide(
                                    color: Colors.black,
                                    width:
                                        1.0), // Define border color and width
                              ),
                            ),
                          ),
                          child: Text('Sign in or create an account',
                              style: Styles.textStyle18
                                  .copyWith(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      "https://i5.walmartimages.com/dfw/4ff9c6c9-a62a/k2-_16b4fa32-fb2c-461b-b8e9-3ea8c7b587da.v1.png?odnHeight=64&odnWidth=107&odnBg=FFFFFF",
                      width: 56,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          child: Text('Earn 5% cash back on Walmart.com.',
                              style: Styles.textStyle14),
                        ),
                        Text('See if you’re  pre-approved with no credit risk.',
                            maxLines: 2,
                            style: Styles.textStyle14
                                .copyWith(color: Colors.grey[500])),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Center(
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//         ),
//         width: 350,
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(
//                       Icons.location_on,
//                       size: 20,
//                     ),
//                     SizedBox(width: 8),
//                     Text(
//                       title,
//                       // "Add an address for shipping",
//                       style: Styles.textStyle16,
//                     ),
//                   ],
//                 ),
//               ),
//               const Text(
//                 "Sacramento, CA 95829",
//                 style: Styles.textStyle14,
//               ),
//               const SizedBox(height: 5),
//               SizedBox(
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Add functionality for the button
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(62),
//                     ),
//                   ),
//                   child: const Text(
//                     "Add Address",
//                     style: Styles.textStyle18,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 5,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
