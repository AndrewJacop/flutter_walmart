import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'package:flutter_walmart/common/data/category_get.dart';
import 'package:flutter_walmart/core/utils/app_router.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:get/get.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 360,
        width: MediaQuery.of(context).size.width,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [HeadSection(), FooterSection(), FooterSection2()],
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "Labtop"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
              title: "Electronics",
              imag:
                  "https://i5.walmartimages.com/dfw/4ff9c6c9-9674/k2-_cd6b8be4-8bfb-47bc-9843-49e8ed571106.v1.jpg?odnHeight=80&amp;odnWidth=80",
            ),
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "home"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Home",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-8370/k2-_15a0a4d2-1619-4914-94cd-774567d41404.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "sport"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Sports & outdoors",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-7e3f/k2-_e7f5b77c-efd9-4d88-b100-fe4ea540158c.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "sport"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Toys",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-6897/k2-_9d771225-ddc0-4ae4-8302-1921a8ace961.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          )
        ],
      ),
    );
  }
}

class FooterSection2 extends StatelessWidget {
  const FooterSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "drink"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Grocery",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-6406/k2-_987b6e28-ac24-4c30-a150-afe57033daf2.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "clothes"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Fashion",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-48f6/k2-_7aed4b13-f076-4785-8b0c-2a8343c2b70c.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "motorcycle"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Auto & tires",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-ba31/k2-_7c974fb0-5145-425a-ad62-a380729e61c8.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"title": "perfumed"});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            child: const ProductCard(
                title: "Health & wellness",
                imag:
                    "https://i5.walmartimages.com/dfw/4ff9c6c9-547e/k2-_b6bb4378-2e73-4d4e-a787-90577b6f334d.v1.jpg?odnHeight=80&odnWidth=80&odnBg=FFFFFF"),
          ),
        ],
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
                "Get it all right here", // Replace with your category name
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 7,
          ),
          InkWell(
            onTap: () async {
              final Categelectronic = Get.put(CategoriesController());
              await Categelectronic.fetchcategories({"": ""});

              final List productlist = Categelectronic.productslist.value;

              // await Get.to(ProductView(
              //   itemsview: productlist,
              // ));
              await Get.toNamed(AppRouter.kproductsview,
                  arguments: productlist);
            },
            // Handle view all action

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
  final String imag;
  final String title;

  const ProductCard({
    super.key,
    required this.imag,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              child: CircleAvatar(
                radius: 35,
                child: CachedNetworkImage(
                  placeholderFadeInDuration: Duration.zero,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: imag ?? "",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: Styles.textStyle14.copyWith(fontSize: 11),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
