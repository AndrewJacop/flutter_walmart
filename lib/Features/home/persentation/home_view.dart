import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:flutter_walmart/Features/home/persentation/widget/home_body.dart';

import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_head_body.dart';

=======
import 'package:flutter_walmart/Features/account/views/account_screen.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/home_body.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_head_body.dart';
import 'package:flutter_walmart/Features/mylists/view/my_list_screen.dart';
import 'package:flutter_walmart/Features/search/views/search_screen.dart';
import 'package:flutter_walmart/Features/services/views/services_screen.dart';
>>>>>>> andrew
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // Replace this with your actual home content widget
<<<<<<< HEAD
    AdvertisingSection(), // Example placeholder for search page
    // const Myitems(),
    // Example placeholder for cart page
    // const Text('Search'),
    const Text('Services'), // Example placeholder for cart page
    const Text('Account'),
=======
    const AdvertisingSection(), // Example placeholder for search page
    const MyListsScreen(), // Example placeholder for cart page
    const SearchScreen(),
    const ServicesScreen(), // Example placeholder for cart page
    const AccountScreen(),
>>>>>>> andrew
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
<<<<<<< HEAD
=======
        items: <BottomNavigationBarItem>[
          _buildBottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: FontAwesomeIcons.store,
            label: 'Home',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.inbox,
            label: 'My Items',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.magnifyingGlass,
            label: 'Search',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.grip,
            label: 'Services',
          ),
          _buildBottomNavigationBarItem(
            icon: FontAwesomeIcons.circleUser,
            label: 'Account',
          ),
        ],
>>>>>>> andrew
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            icon: FaIcon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.shoppingCart),
            label: 'My files',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userCircle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
