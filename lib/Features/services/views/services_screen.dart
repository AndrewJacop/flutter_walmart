import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/services/views/widgets/custom_section.dart';
import 'package:flutter_walmart/Features/services/views/widgets/horizontal_card.dart';
import 'package:flutter_walmart/Features/services/views/widgets/vertical_card.dart';
import 'package:flutter_walmart/common/widgets/custome_divider.dart';
import 'package:flutter_walmart/common/widgets/feedback_section.dart';
import 'package:flutter_walmart/common/widgets/shadowed_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Store Tools
              ...customHorizontalSection(
                  "Store Tools",
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text("Find a store nearby")),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          VerticalCard(
                              icon: FontAwesomeIcons.fan, title: "Walmart Pay"),
                          VerticalCard(
                              icon: FontAwesomeIcons.barcode,
                              title: "Check a price"),
                          VerticalCard(
                              icon: FontAwesomeIcons.map, title: "Store Map"),
                        ],
                      ),
                    ],
                  ),
                  null),

              ShadowedContainer(
                child: Column(
                  children: [
                    /// header
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          Image.network(
                            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1688679407-90-removebg-preview.png",
                            height: 28,
                          ),
                          const Text(" Member Benefits",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                    const CustomDivider(),

                    /// Tiles
                    const HorizontalCard(
                      icon: FontAwesomeIcons.barcode,
                      title: "Scan & go",
                      subtitle:
                          "Scan items as you shop and pay with your phone",
                    ),
                    const CustomDivider(),
                    const HorizontalCard(
                      icon: FontAwesomeIcons.gasPump,
                      title: "Membee Price on Fuel",
                      subtitle: "Save 10\$ per gallon at 13,000+ gas stations",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              /// Popular Services
              ...customHorizontalSection(
                  "Popular Services",
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerticalCard(
                          icon: FontAwesomeIcons.prescriptionBottleMedical,
                          title: "Pharmacy"),
                      VerticalCard(
                          icon: FontAwesomeIcons.car,
                          title: "Auto Care Center"),
                      VerticalCard(
                          icon: FontAwesomeIcons.cakeCandles,
                          title: "Custome Cakes"),
                    ],
                  ),
                  160),

              /// Recommendedd for you

              /// Health & Wellness Services
              const ShadowedContainer(
                child: Column(
                  children: [
                    /// header
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(" Health & Wellness Services",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ),
                    CustomDivider(),

                    /// Tiles
                    HorizontalCard(
                      icon: FontAwesomeIcons.syringe,
                      title: "Vaccination Services",
                      subtitle:
                          "See avialability & schadule if you're eligible.",
                    ),
                    CustomDivider(),
                    HorizontalCard(
                      icon: FontAwesomeIcons.capsules,
                      title: "Same day treatment",
                      subtitle:
                          "Get tested & treated for strep, flu & COVID-19.",
                    ),
                    CustomDivider(),
                    HorizontalCard(
                      icon: FontAwesomeIcons.houseMedical,
                      title: "Walmart Health",
                      subtitle:
                          "Find medical, dental & behavioral health services.",
                    ),
                    CustomDivider(),
                    HorizontalCard(
                      icon: FontAwesomeIcons.eye,
                      title: "Vision Centers",
                      subtitle: "Eye exams, glasses, contact lenses & more.",
                    ),
                    CustomDivider(),
                    HorizontalCard(
                      icon: FontAwesomeIcons.idCard,
                      title: "Insurance Services",
                      subtitle: "Medicare, individual & family plans & more.",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              /// More Services
              const ShadowedContainer(
                child: Column(
                  children: [
                    /// header
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("More Services",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ),
                    CustomDivider(),

                    /// Tiles
                    HorizontalCard(
                      icon: FontAwesomeIcons.paw,
                      title: "Pet Pharmacy",
                      subtitle:
                          "Shop top pet supplies & medicationss for less.",
                    ),
                    CustomDivider(),
                    HorizontalCard(
                      icon: FontAwesomeIcons.image,
                      title: "Photo Center",
                      subtitle: "Create prints, wall art, photo books & more.",
                      trailingIcon: FontAwesomeIcons.arrowUpRightFromSquare,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              /// Footer
              const FeedbackSection()
            ],
          ),
        ),
      ),
    );
  }
}
