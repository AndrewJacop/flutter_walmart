import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_walmart/Features/Product/presentation/shipping.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: false,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Cart"),
                          SizedBox(
                            width: 5,
                          ),
                          Text("(sumitem of sumitem)"),
                        ],
                      ),
                      CardView3(),
                      FulfillmentZone(),
                      ProductsCart()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardView3 extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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

class ProductsCart extends StatefulWidget {
  const ProductsCart({Key? key}) : super(key: key);

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
                      offset: Offset(0, 2), // changes position of shadow
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
                            SizedBox(
                              child: Text(
                                'Pickup or delivery from store ',
                                style: Styles.textStyle18,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
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
            SizedBox(
              height: 10,
            ),
            showDetails
                ? Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [Text("2 of 2 items selected")],
                        ),
                        Row(
                          children: [
                            Image.network(
                                width: 30,
                                "https://i5.walmartimages.com/asr/7c542df3-e6b3-4b7a-8dfa-ad252d411dcb.2c1e103d237d8914cfb584ad4a5d828c.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF")
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                showDetails =
                                    !showDetails; // Toggle showDetails value
                              });
                            },
                            child: Row(
                              children: [
                                Text("see details"),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(FontAwesomeIcons.arrowDown)
                              ],
                            ))
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Text("2 of 2 items selected"),
                          SizedBox(
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
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 400,
                        width: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return PrpductsShow();
                          },
                          itemCount: 4,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showDetails =
                                  !showDetails; // Toggle showDetails value
                            });
                          },
                          child: Row(
                            children: [
                              Text("hide details"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(FontAwesomeIcons.arrowUp)
                            ],
                          ))
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
  });

  @override
  State<PrpductsShow> createState() => _PrpductsShowState();
}

bool checked = false;

class _PrpductsShowState extends State<PrpductsShow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(
              value: checked,
              onChanged: (newValue) {
                setState(() {
                  checked = newValue!;
                });
              },
            ),
            Image.network(
                width: 50,
                "https://i5.walmartimages.com/asr/7c542df3-e6b3-4b7a-8dfa-ad252d411dcb.2c1e103d237d8914cfb584ad4a5d828c.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF"),
            Container(
              width: MediaQuery.of(context).size.width / 1.9,
              height: 70,
              child: Text(
                "Open Box Apple iPhone 15 Pro Max A2849 256GB Natural Titanium (US Model) - Factory Unlocked Cell Phone",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            Text("14")
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Text(
                "remove ",
                style: Styles.textStyle14
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ),
            InkWell(
              child: Text(
                "Save for later  ",
                style: Styles.textStyle14
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ),
            InkWell(
              child: Text(
                "Save for later  ",
                style: Styles.textStyle14
                    .copyWith(decoration: TextDecoration.underline),
              ),
            )
          ],
        )
      ],
    );
  }
}
