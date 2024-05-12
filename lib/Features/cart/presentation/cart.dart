import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_walmart/Features/payment/data/repos/checkout_repo.dart';
import 'package:flutter_walmart/Features/payment/data/repos/checkout_repo_impl.dart';
import 'package:flutter_walmart/Features/payment/presentation/manger/cubit/payment_get.dart';
import 'package:flutter_walmart/Features/payment/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:flutter_walmart/common/widgets/button_enmation.dart';

import 'package:flutter_walmart/features/Product/data/model/Product_model.dart';
import 'package:flutter_walmart/features/cart/logic/get_cart.dart';

import 'package:flutter_walmart/features/home/persentation/widget/appbar/custom_seacrch.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const CustomSearch(),
        ),
        body: Stack(children: [
          CustomScrollView(
            shrinkWrap: false,
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text("Cart"),
                              const SizedBox(
                                width: 5,
                              ),
                              Obx(() => Text(
                                    "(sumitem of ${cartController.cartItems.length})",
                                  )),
                            ],
                          ),
                          const CardView3(),
                          const FulfillmentZone(),
                          ProductsCart(
                            cartItems: cartController.cartItems,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            // This positions the button containing the price
            bottom: -1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey[200],
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Obx(() => Text(
                                "Estimated total ${cartController.cartItems.length} of ${cartController.cartItems.length} items",
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$',
                          style: Styles.textStyle18.copyWith(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        Obx(() => Text(
                              '${cartController.sum.value}',
                              style: Styles.textStyle18.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        // Obx(() => Text(
                        //       cartController.sumsale.value.toStringAsFixed(2) !=
                        //               null
                        //           ? 'Sale Price: \$${cartController.sumsale.value.toStringAsFixed(2)}'
                        //           : 'Price when purchased online',
                        //       style: Styles.textStyle14,
                        //     )),
                      ],
                    ),
                    InkWell(
                      onTap: () async {
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            builder: (context) {
                              final PaymentController paymentController =
                                  Get.put(
                                      PaymentController(CheckoutRepoImpl()));
                              paymentController.sumamount =
                                  cartController.sum.value.toString();

                              return const PaymentMethodsBottomSheet();
                            });
                        // Add your checkout logic here
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                              15), // Adjust border radius as needed
                          border: Border.all(
                              color: Colors.blue,
                              width: 2), // Add border properties
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 30,
                        child: Center(
                          child: Text(
                            'checkout all items',
                            style: Styles.textStyle14
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CardView3 extends StatelessWidget {
  const CardView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.grey,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.circleInfo),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          child: Text(
                            'To accurately see how fast you can get your \n order delivered, add a delivery address',
                            style: Styles.textStyle14,
                          ),
                        ),
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

class FulfillmentZone extends StatelessWidget {
  const FulfillmentZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            // Image.asset(
            //   "assets/image/onlineStores.gif",
            //   width: 66,
            //   height: 40,
            // ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                "Pickup and delivery options",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
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
    super.key,
    required this.iconUrl,
    required this.title,
    required this.subtitle,
    this.selected = false,
  });

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
      margin: const EdgeInsets.all(8),
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
            const SizedBox(height: 4),
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

class ProductsCart extends StatefulWidget {
  const ProductsCart({super.key, required this.cartItems});
  final List<ProductsModel> cartItems;
  @override
  State<ProductsCart> createState() => _ProductsCartState();
}

bool showDetails = true;

class _ProductsCartState extends State<ProductsCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey.shade400, // Border color
          width: 0.5, // Border width
        ), // Adjust the radius as needed
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              child: Text(
                                'Pickup or delivery from store ',
                                style: Styles.textStyle18,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'as soon as Tomorrow',
                                  style: Styles.textStyle14,
                                ),
                                Text(
                                  'Reserve a time ',
                                  style: Styles.textStyle14.copyWith(
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            showDetails
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(" ${widget.cartItems.length} items selected")
                        ],
                      ),
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context)
                            .size
                            .width, // Adjust the width as needed
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.cartItems.length,
                          itemBuilder: (context, index) {
                            final product = widget.cartItems[index];

                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Image.network(
                                product.images[0] ??
                                    "https://i5.walmartimages.com/asr/7c542df3-e6b3-4b7a-8dfa-ad252d411dcb.2c1e103d237d8914cfb584ad4a5d828c.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF",
                                width: 50,
                              ),
                            );
                          },
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showDetails =
                                  !showDetails; // Toggle showDetails value
                            });
                          },
                          child: const Row(
                            children: [
                              Text("see details"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.arrowDown,
                                size: 10,
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Text("${widget.cartItems.length} items selected"),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            child: Text(
                              "Deselect all item ",
                              style: Styles.textStyle14.copyWith(
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final product = widget.cartItems[index];
                            final quantity =
                                widget.cartItems[index].count.value;
                            return PrpductsShow(
                              product: product,
                              quantity: quantity,
                            );
                          },
                          itemCount: widget.cartItems.length,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showDetails =
                                  !showDetails; // Toggle showDetails value
                            });
                          },
                          child: const Row(
                            children: [
                              Text("hide details"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.arrowUp,
                                size: 10,
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class PrpductsShow extends StatefulWidget {
  const PrpductsShow({
    super.key,
    required this.product,
    required this.quantity,
  });

  final ProductsModel product;
  final int quantity;

  @override
  State<PrpductsShow> createState() => _PrpductsShowState();
}

class _PrpductsShowState extends State<PrpductsShow> {
  final CartController _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: CachedNetworkImage(
                  placeholderFadeInDuration: Duration.zero,
                  placeholder: (context, url) =>
                      Center(child: const CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: widget.product.images[0],
                  fit: BoxFit.fill,
                ),
              ),
              // Image.network(
              //   widget.product.images[0],
              //   width: 50,
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: 70,
                child: Text(
                  widget.product.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              Text(' \$${widget.product.originalPrice}')
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _cartController.removeFromCart(widget.product);
                },
                child: const Text(
                  "remove",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              InkWell(
                onTap: () {
                  // Implement your logic to save for later
                },
                child: const Text(
                  "Save for later",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              AnimatedNumber(
                productsid: widget.product,
              )
            ],
          )
        ],
      ),
    );
  }
}
