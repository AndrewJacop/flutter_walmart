import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/account/views/account_screen.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/home_body.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/appbar/custom_head_body.dart';
import 'package:flutter_walmart/Features/mylists/view/my_list_screen.dart';
import 'package:flutter_walmart/Features/search/views/search_screen.dart';
import 'package:flutter_walmart/Features/services/views/services_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // Replace this with your actual home content widget
    const AdvertisingSection(), // Example placeholder for search page
    const MyListsScreen(), // Example placeholder for cart page
    const SearchScreen(),
    const ServicesScreen(), // Example placeholder for cart page
    const AccountScreen(),
    // Example placeholder for profile page
  ];

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
