import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/widgets/custome_divider.dart';
import 'package:flutter_walmart/common/widgets/shadowed_container.dart';

List<Widget> customHorizontalSection(
    String title, Widget child, double? height) {
  return <Widget>[
    Text(title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(height: height, child: child),
    ),
    const SizedBox(height: 20),
  ];
}

List<Widget> customVerticalSection(Widget header, List children) {
  return <Widget>[
    ShadowedContainer(
      child: Column(
        children: [
          /// header
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: header),
          const CustomDivider(),

          /// Tiles
          ...children,
        ],
      ),
    ),
    const SizedBox(height: 40),
  ];
}
