import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/home/persentation/widget/appbar/custom_dropdown.dart';
import 'package:flutter_walmart/features/home/persentation/widget/appbar/custom_seacrch.dart';
import 'package:flutter_walmart/features/home/persentation/widget/appbar/appbar.dart';
import 'package:flutter_walmart/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
  });

  final OverlayPortalController _tooltipController = OverlayPortalController();

  final _link = LayerLink();
  double? _buttonWidth;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      _buttonWidth = context.size?.width;
      _tooltipController.toggle();
    }

    return Container(
      height: 150,
      color: Colors.blue,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        HeadAppBar(),
        const CustomSearch(),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: CompositedTransformTarget(
                link: _link,
                child: OverlayPortal(
                  controller: _tooltipController,
                  overlayChildBuilder: (BuildContext context) {
                    return CompositedTransformFollower(
                      link: _link,
                      targetAnchor: Alignment.topLeft,
                      child: MenuWidget(
                        ontap: onTap,
                        // Set the width of the MenuWidget
                      ),
                    );
                  },
                  child: ButtonWidget(
                      height: 30,
                      width: 30,
                      onTap: onTap,
                      child: Row(children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundImage: NetworkImage(
                              'https://i5.walmartimages.com/dfw/4ff9c6c9-ad46/k2-_0a671c38-d307-447c-835e-7904ab143c26.v1.png',
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Text(
                          "hwo do you want your items",
                          style:
                              Styles.textStyle14.copyWith(color: Colors.white),
                        ),
                        Text(
                          "  | 98754",
                          style:
                              Styles.textStyle14.copyWith(color: Colors.white),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.chevronDown,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ])),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
