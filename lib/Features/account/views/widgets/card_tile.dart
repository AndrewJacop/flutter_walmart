import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/services/views/widgets/circular_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    required this.title,
    this.subTitle,
    required this.icon,
    this.height,
    this.child,
    this.trailingIcon = FontAwesomeIcons.angleRight,
    this.backgroundColor = Colors.white,
  });

  final String title;
  final String? subTitle;
  final double? height;
  final IconData icon, trailingIcon;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularIcon(
                    icon: icon,
                    iconSize: 30,
                    iconColor: Colors.grey.shade700,
                    backgroundColor: Colors.white,
                  )),
              title: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(fontWeightDelta: 2)),
              subtitle: (subTitle != null) ? Text(subTitle!) : null,
              trailing: Icon(trailingIcon, size: 18),
            ),
            child ?? const SizedBox(height: 5)
          ],
        ),
      ),
    );
  }
}
