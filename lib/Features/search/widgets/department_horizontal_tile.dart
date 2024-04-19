import 'package:flutter/material.dart';

class DepartmentHorizontalTile extends StatelessWidget {
  const DepartmentHorizontalTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
            ),
            title: const Text("Department Name"),
            trailing: const Icon(Icons.arrow_right),
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}
