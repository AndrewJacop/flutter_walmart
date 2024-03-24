import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/item_banner_body_home.dart';
import 'package:flutter_walmart/core/utils/assets.dart';

class AdvertisingSection extends StatelessWidget {
  const AdvertisingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(0),

        crossAxisCount: 1,

        children: const <Widget>[
          ItemBanner(
            imgurl: AssetsData.banr1,
          ),
          ItemBanner(
            imgurl: AssetsData.banr2,
          ),
          ItemBanner(
            imgurl: AssetsData.banr3,
          )
        ],
        // scrollDirection: Axis.vertical,
        // itemCount: 3, // Number of ads/cards
        // itemBuilder: (BuildContext context, int index) {
        //   return Row(
        //     children: [
        //       SizedBox(
        //         width: 150.0, // Width of each card
        //         child: _buildCard(index * 2), // Build the first card
        //       ),
        //       const SizedBox(width: 20.0), // Add space between cards
        //       SizedBox(
        //         width: 150.0, // Width of each card
        //         child: _buildCard(index * 2 + 1), // Build the second card
        //       ),
        //     ],
        //   );
      ),
    );
  }
}
