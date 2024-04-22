import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/mylists/view/lists_tab.dart';
import 'package:flutter_walmart/features/mylists/view/registries_tab.dart';
import 'package:flutter_walmart/features/mylists/view/reorder_tab.dart';

class MyListsScreen extends StatelessWidget {
  const MyListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
            appBar: TabBar(
              tabs: [
                Tab(text: "Reorder"),
                Tab(text: "Lists"),
                Tab(text: "Registries"),
              ],
            ),
            body: TabBarView(
              children: [
                ReorderTab(),
                ListsTap(),
                RegistriesTab(),
              ],
            )));
  }
}
