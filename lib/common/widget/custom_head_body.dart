import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/custom_dropdown.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/custom_seacrch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeadBody extends StatelessWidget {
  HeadBody({
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
      height: 80,
      color: Colors.blue,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const CustomSearch(),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage('assets/image/loginlogo.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const Text("hwo do you want your items"),
                  const Text("  | 98754"),
                  const Spacer(
                    flex: 5,
                  ),
                  CompositedTransformTarget(
                    link: _link,
                    child: OverlayPortal(
                      controller: _tooltipController,
                      overlayChildBuilder: (BuildContext context) {
                        return CompositedTransformFollower(
                          link: _link,
                          targetAnchor: Alignment.bottomLeft,
                          child: MenuWidget(
                            width: 200, // Set the width of the MenuWidget
                          ),
                        );
                      },
                      child: ButtonWidget(
                        height: 30,
                        width: 30,
                        onTap: onTap,
                        child: Icon(
                          FontAwesomeIcons.arrowDown,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
