import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/item_banner_body_home.dart';
import 'package:flutter_walmart/common/widget/cardview.dart';
import 'package:flutter_walmart/common/widget/subcategory_section.dart';

class AdvertisingSection extends StatelessWidget {
  const AdvertisingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ItemBanner(
                aspectR: 16 / 9,
              ),
              SizedBox(
                height: 360,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 340,
                        width: MediaQuery.of(context).size.width / 2.33,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // First item
                            ItemBanner(aspectR: 16 / 11),
                            ItemBanner(aspectR: 16 / 13),
                            // Add some space between items
                            // Third item
                            // ItemBanner(imgurl: AssetsData.banr3, aspectR: 16 / 14),
                          ],
                        ),
                      ),
                    ),
                    // Add some space between the columns
                    SizedBox(
                      height: 338,
                      width: MediaQuery.of(context).size.width / 2.33,
                      child: const Column(
                        children: [
                          ItemBanner(
                            aspectR: 9 / 17,
                            imgurl:
                                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTiwFWNzshJhQLAevXGYIQL15YeGdqy_QpvtG_5MW9ufmZywMFL",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const ItemBanner(
                imgurl:
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRN8OtMi6SZMqKxDGJ2r-DP-f_T0bQ8wT3PDt0LWJHER9pezAIx",
                aspectR: 16 / 5,
              ),
              CardView(),
              const ItemBanner(
                imgurl:
                    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSULkEU1cpVHmYdeDrcdtH5yqntFc3_iBZHdAb1KJt74WwPFcyI",
                aspectR: 16 / 9,
              ),
              const ItemBanner(
                imgurl:
                    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQu-hOmvL5GqezqHo9wD1oFUHFw6PLHQoK899qDDbfOwcQim-mW",
                aspectR: 16 / 9,
              ),
              SizedBox(
                height: 360,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 340,
                        width: MediaQuery.of(context).size.width / 2.33,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // First item
                            ItemBanner(aspectR: 16 / 11),
                            ItemBanner(aspectR: 16 / 13),
                            // Add some space between items
                            // Third item
                            // ItemBanner(imgurl: AssetsData.banr3, aspectR: 16 / 14),
                          ],
                        ),
                      ),
                    ),
                    // Add some space between the columns
                    SizedBox(
                      height: 338,
                      width: MediaQuery.of(context).size.width / 2.33,
                      child: const Column(
                        children: [
                          ItemBanner(
                            aspectR: 9 / 17,
                            imgurl:
                                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTiwFWNzshJhQLAevXGYIQL15YeGdqy_QpvtG_5MW9ufmZywMFL",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SubcategorySection(),
              const ItemBanner(
                aspectR: 16 / 12,
              ),
              const ItemBanner(
                aspectR: 16 / 9,
                imgurl:
                    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTuE5sefvsyBxXMCbTFFgbZfhIYkf3s2oCEHWqtvfFM3tBkE-5g",
              ),
              const ItemBanner(
                aspectR: 16 / 11,
                imgurl:
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQyC02R0zlCNTWwgmBBb8HXpLRwFJgYZSCDtaAWKg_cchsivaKn",
              ),
              SizedBox(
                height: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 338,
                      width: MediaQuery.of(context).size.width / 2.33,
                      child: const Column(
                        children: [
                          ItemBanner(
                            aspectR: 9 / 17,
                            imgurl:
                                "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTmqhHxSos5P-LaQNcD__jQKdz6ZT78-_Nhj757H2zEOg2Iu-FR",
                          ),
                        ],
                      ),
                    ),
                    // Add some space between the columns
                    SizedBox(
                      height: 338,
                      width: MediaQuery.of(context).size.width / 2.33,
                      child: const Column(
                        children: [
                          ItemBanner(
                            aspectR: 9 / 17,
                            imgurl:
                                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRU0_lTGmx3LTH4Bb8wVQYRqmS2BrJVD59jhBxErHMjwJ4CNMF-",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SubcategorySection(),
              ItemBanner(
                  aspectR: 9 / 15,
                  imgurl:
                      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQQj6HHUgPxiZk3IKoW3DlXyAZOjdgcFGLqss-WzBreRJK_35ow"),
            ],
          ),
        ),
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
      
