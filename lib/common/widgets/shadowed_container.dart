import 'package:flutter/material.dart';

class ShadowedContainer extends StatelessWidget {
  const ShadowedContainer({
    super.key,
    this.height,
    this.width,
    required this.child,
  });

  final double? height, width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: child,
    );
  }
}
