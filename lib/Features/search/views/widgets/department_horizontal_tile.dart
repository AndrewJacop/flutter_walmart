import 'package:flutter/material.dart';
import 'package:flutter_walmart/common/widgets/custome_divider.dart';

class DepartmentHorizontalTile extends StatelessWidget {
  const DepartmentHorizontalTile({
    super.key,
    required this.title,
    required this.imgLink,
  });

  final String title;
  final String imgLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(imgLink),
            ),
            title: Text(title),
            trailing: const Icon(Icons.arrow_right),
          ),
          const CustomDivider()
        ],
      ),
    );
  }
}
