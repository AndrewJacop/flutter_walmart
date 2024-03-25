import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/dropdown_list.dart';
import 'package:flutter_walmart/core/utils/styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.height = 48,
    this.width,
    this.onTap,
    this.child,
  }) : super(key: key);

  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: child ?? const SizedBox(),
          ),
        ),
      ),
    );
  }
}

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key, this.width, this.ontap}) : super(key: key);

  final double? width;
  final void Function()? ontap;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

int selectedIndex = 0;

class _MenuWidgetState extends State<MenuWidget> {
  List<String> imageUrls = [
    "https://i5.walmartimages.com/dfw/4ff9c6c9-486e/k2-_4be6f532-b0b2-4480-bb65-d53586e87193.v1.png",
    "https://i5.walmartimages.com/dfw/4ff9c6c9-944a/k2-_333618e2-7327-4081-990e-7870dd062248.v1.png",
    "https://i5.walmartimages.com/dfw/4ff9c6c9-4637/k2-_c8d39665-dac4-474a-9fb7-ab5feeb647b5.v1.png"
  ];

  List<Column> contanierwidget = [
    Column(
      children: [
        const AddressContainer(
          title: 'Add an address for shipping',
        ),
        const SizedBox(
          height: 5,
        ),
        ShippingInfoContainer(),
      ],
    ),
    Column(
      children: [DeliveryContainer(), FulfillmentAddressCard()],
    ),
    const Column(
      children: [
        AddressContainer(
          title: 'Add an address for delivery',
        ),
      ],
    ),
  ];
  void handleSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: widget.ontap,
                    child: const Text(
                      "Howe do you want items ?",
                      style: Styles.textStyle25,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    size: 30, // Adjust the size as needed
                    color: Colors.white, // Adjust the color as needed
                  )
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  3,
                  (index) => GestureDetector(
                    onTap: () => handleSelection(index),
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundColor: selectedIndex == index
                                  ? Color(0xFFFFD700)
                                  // Highlight color
                                  : null,
                              child: CircleAvatar(
                                radius: 38.0,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: NetworkImage(
                                    imageUrls[index],
                                    // Change to your image URLs
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (selectedIndex == index)
                          Positioned(
                            height: 20,
                            child: Center(
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xFFFFD700),
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 70,
                      height: 80,
                      child: Text(
                        "Shiping",
                        style: Styles.textStyle18,
                      )),
                  SizedBox(
                      width: 70,
                      height: 80,
                      child: Text(
                        "Pickup",
                        style: Styles.textStyle18,
                      )),
                  SizedBox(
                      width: 70,
                      height: 80,
                      child: Text("Delivery", style: Styles.textStyle18)),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              contanierwidget[selectedIndex],
              const Spacer(
                flex: 2,
              ),
              Container(
                height: 3,
                width: 200,
                color: Colors.white,
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
