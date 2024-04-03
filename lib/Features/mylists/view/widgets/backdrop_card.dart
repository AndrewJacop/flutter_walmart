import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackdropCard extends StatelessWidget {
  const BackdropCard({
    super.key,
    required this.svgLink,
    required this.height,
    required this.text,
  });

  final String svgLink;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.network(
            svgLink,
            height: height,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
