import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/services/views/widgets/circular_icon.dart';
import 'package:flutter_walmart/core/utils/device_utils.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: DeviceUtils.getScreenWidth(context) * 0.28,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularIcon(icon: icon),
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
