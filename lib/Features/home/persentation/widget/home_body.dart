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
      child: Column(
        children: [
          ItemBanner(imgurl: AssetsData.banr1),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    // First item
                    ItemBanner(imgurl: AssetsData.banr1),
                    SizedBox(height: 10), // Add some space between items
                    // Third item
                    ItemBanner(imgurl: AssetsData.banr3),
                  ],
                ),
              ),
              SizedBox(width: 10), // Add some space between the columns
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    // Second item
                    ItemBanner(imgurl: AssetsData.banr2),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
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
      
