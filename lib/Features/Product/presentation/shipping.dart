import 'package:flutter/material.dart';

import 'package:flutter_walmart/core/utils/styles.dart';

class FulfillmentZone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            "How you'll get this item:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  "I want shipping & delivery savings with",
                  style: Styles.textStyle14,
                ),
                Image.asset(
                  "assets/image/onlineStores.gif",
                  width: 66,
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        Text(
          "You get 30 days free! Choose a plan at checkout.",
          style: Styles.textStyle14,
        ),
        Row(
          children: [
            FulfillmentTile(
              iconUrl:
                  "https://i5.walmartimages.com/dfwrs/76316474-f13c/k2-_d4e8ebb4-9d70-46b4-8f2b-ecc4ac774e07.v1.png",
              title: "Shipping",
              subtitle: "Out of stock",
            ),
            FulfillmentTile(
              iconUrl:
                  "https://i5.walmartimages.com/dfwrs/76316474-8720/k2-_d747b89f-5900-404d-a101-1a3452480882.v1.png",
              title: "Pickup",
              subtitle: "Check nearby",
            ),
            FulfillmentTile(
              iconUrl:
                  "https://i5.walmartimages.com/dfwrs/76316474-39c2/k2-_8deea800-0d44-4984-b1ce-5a3f12b192b7.v1.png",
              title: "Delivery",
              subtitle: "Out of stock",
              selected: true,
            ),
          ],
        ),
      ]),
    );
  }
}

class FulfillmentTile extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String subtitle;
  final bool selected;

  const FulfillmentTile({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.subtitle,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Border color
          width: 1.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8), // Border radius
      ),
      margin: EdgeInsets.all(8),
      width: 110,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              iconUrl,
              height: 50,
              width: 50,
            ),
            SizedBox(height: 4),
            Center(
                child: Text(
              title,
              style: Styles.textStyle14,
              textAlign: TextAlign.center,
            )),
            Center(
                child: Text(
              subtitle,
              style: Styles.textStyle14,
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }
}
