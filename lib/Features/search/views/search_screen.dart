import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/search/controllers/department_controller.dart';
import 'package:flutter_walmart/features/search/views/widgets/department_horizontal_tile.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DepartmentController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("All Departments",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: ListView.builder(
        itemCount: controller.departmentList.length,
        itemBuilder: (_, index) => DepartmentHorizontalTile(
          title: controller.departmentList[index].title,
          imgLink: controller.departmentList[index].imgLink,
        ),
      ),
    );
  }
}
