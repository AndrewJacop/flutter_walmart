import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class categorySection extends StatelessWidget {
  final String categoryname;
  final String subcategories;
  const categorySection(
      {Key? key,
      required this.productsitems,
      required this.categoryname,
      required this.subcategories})
      : super(key: key);
  final List<ProductsModel> productsitems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 380,
        width: 389,
        child: Column(
          children: [
            HeadSection(
              catname: subcategories,
              subcat: categoryname,
            ),
            FooterSection(
              productsitems: productsitems,
            ),
            FooterSection(
              productsitems: productsitems,
            )
          ],
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
    required this.productsitems,
  });
  final List<ProductsModel> productsitems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    ProductCard(product: productsitems[index]),
                itemCount: productsitems.length,
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
  final String catname;
  final String subcat;
  const HeadSection({
    super.key,
    required this.catname,
    required this.subcat,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                catname, // Replace with your category name
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subcat, // Replace with your subcategories text
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

class ProductCard extends StatelessWidget {
  final ProductsModel product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle tap
      },
      child: Container(
        width: 100,
        height: 90, // Adjust height as needed

        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: AspectRatio(
                    aspectRatio: 11 / 16,
                    child: CircleAvatar(
                      radius: 80,
                      child: CachedNetworkImage(
                        placeholderFadeInDuration: Duration.zero,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        imageUrl: product.images!.isNotEmpty
                            ? product.images![0]
                            : "",
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
