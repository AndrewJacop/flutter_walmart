import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/widgets/product_subcategory.dart';

class SubcategorySection extends StatefulWidget {
  const SubcategorySection({super.key});

  @override
  _SubcategorySectionState createState() => _SubcategorySectionState();
}

class _SubcategorySectionState extends State<SubcategorySection> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 426,
        width: 389,
        child: Column(
          children: [HeadSection(), FooterSection()],
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemBuilder: (context, index) => const SubProductCard(
                  imgurl:
                      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT2CveDtHqPTwST3VbNziXdwJe4dccKKnD8S18nQrLjFodGTF3H",
                  productId: "2177583020",
                  productName:
                      "PayLessHere 5 Inch Memory Foam Mattress/Cooling Gel Bamboo Charcoal Infused Mattress/Medium Firm Mattresses/CertiPUR-US Certified/Bed-in-a-Box/Pressure Relieving Full Size, White",
                  price: 299.99, // Example price
                  salePrice: 249.99, // Example sale price
                ),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeadSection extends StatelessWidget {
  const HeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Category Name", // Replace with your category name
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Subcategories", // Replace with your subcategories text
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 7,
          ),
          InkWell(
            onTap: () {
              // Handle view all action
            },
            child: const Text(
              "View All",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue, // You can adjust the color
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
