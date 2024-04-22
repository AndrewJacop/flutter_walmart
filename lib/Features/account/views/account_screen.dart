import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/account/views/widgets/card_tile.dart';
import 'package:flutter_walmart/Features/services/views/widgets/horizontal_card.dart';
import 'package:flutter_walmart/common/widgets/custome_divider.dart';
import 'package:flutter_walmart/common/widgets/feedback_section.dart';
import 'package:flutter_walmart/common/widgets/shadowed_container.dart';
import 'package:flutter_walmart/core/utils/device_utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            automaticallyImplyLeading: false,
            floating: true,
            flexibleSpace: Container(
              height: 100,
              color: Colors.blue,
              child: Column(
                children: [
                  Text("Hi, Yousef",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .apply(color: Colors.white, fontWeightDelta: 2)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.circleDollarToSlot,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 10),
                      Text("Walmart Cash",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: Colors.white)),
                      const SizedBox(width: 10),
                      Text("Get More",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                              decoration: TextDecoration.underline,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            collapsedHeight: 100,
            expandedHeight: 100,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 500,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    CardTile(
                      title: 'Earn up to 5% cash back',
                      subTitle: "Capital One' Walmart Rewards' Card",
                      icon: FontAwesomeIcons.creditCard,
                    ),
                    CardTile(
                      title: 'All caught up! O new messages',
                      icon: FontAwesomeIcons.telegram,
                    ),
                    CardTile(
                      title: 'Purchase history',
                      icon: FontAwesomeIcons.creditCard,
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                            "Track your order status, start a return, or view purchase history and receipts."),
                      ),
                    ),
                    CardTile(
                      title: 'Wallet',
                      icon: FontAwesomeIcons.wallet,
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                            "Manage your payment methods, learn about our rewards card and access your Walmart or Sam's Club digital COVID-19 vaccine record."),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 700,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    ShadowedContainer(
                      width: DeviceUtils.getScreenWidth(context) * .9,
                      child: const Column(
                        children: [
                          /// header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(" Health & Wellness Services",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
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
                            subtitle:
                                "Eye exams, glasses, contact lenses & more.",
                          ),
                          CustomDivider(),
                          HorizontalCard(
                            icon: FontAwesomeIcons.idCard,
                            title: "Insurance Services",
                            subtitle:
                                "Medicare, individual & family plans & more.",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const FeedbackSection()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
