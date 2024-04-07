import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/home/data/model/ads_model.dart';
import 'package:flutter_walmart/Features/home/data/reop/ads_repo.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/home_body.dart';

import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_head_body.dart';
import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // Replace this with your actual home content widget
    AdvertisingSection(), // Example placeholder for search page
    const Text('Myfiles'), // Example placeholder for cart page
    const Text('Search'),
    const Text('Services'), // Example placeholder for cart page
    const Text('Account'),
    // Example placeholder for profile page
  ];

  late List<dynamic> adsData;

  @override
  void initState() {
    super.initState();
    // Initialize your ApiService
    // Fetch ads data when the widget initializes
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // CustomAppBar(),
          CustomAppBar(),
          Expanded(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _buildBottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: FontAwesomeIcons.home,
            label: 'Home',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.shoppingCart,
            label: 'My files',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.search,
            label: 'Search',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.user,
            label: 'Services',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.userCircle,
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          // Handle tap on this item
          _onItemTapped(
              _selectedIndex); // Example: Call the same method for now
        },
        child: FaIcon(icon),
      ),
      label: label,
    );
  }
}
