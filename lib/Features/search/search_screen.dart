import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/search/widgets/department_horizontal_tile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("All Departments",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (_, index) => const DepartmentHorizontalTile(),
      ),
    );
  }
}
