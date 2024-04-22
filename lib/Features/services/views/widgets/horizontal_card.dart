import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/services/views/widgets/circular_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.trailingIcon = FontAwesomeIcons.angleRight,
  });

  final String title, subtitle;
  final IconData icon;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    final bool hasSubtitle = subtitle.isNotEmpty;
    return ListTile(
      tileColor: Colors.white,
      leading: SizedBox(
          height: 50, width: 50, child: CircularIcon(icon: icon, iconSize: 20)),
      title: Text(title, style: Theme.of(context).textTheme.labelLarge),
      subtitle: hasSubtitle
          ? Text(subtitle, style: Theme.of(context).textTheme.bodySmall)
          : null,
      trailing: FaIcon(trailingIcon, size: 18),
    );
  }
}
