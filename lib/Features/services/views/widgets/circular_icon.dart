import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.containerSize = 80,
    this.iconSize = 30,
    required this.icon,
    this.iconColor = Colors.blueAccent,
    this.backgroundColor = const Color(0xffe6f1fc),
  });

  final double containerSize;
  final double iconSize;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerSize,
      width: containerSize,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(100)),
      child: Center(child: FaIcon(icon, color: iconColor, size: iconSize)),
    );
  }
}
