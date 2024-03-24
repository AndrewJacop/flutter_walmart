import 'package:flutter/material.dart';
import 'package:flutter_walmart/Features/home/persentation/widget/home_body.dart';
import 'package:flutter_walmart/common/widget/appbar.dart';
import 'package:flutter_walmart/common/widget/custom_head_body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // Replace this with your actual home content widget
    const AdvertisingSection(), // Example placeholder for search page
    const Text('Myfiles'), // Example placeholder for cart page
    const Text('Search'),
    const Text('Services'), // Example placeholder for cart page
    const Text('Account'),
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
      appBar: CustomAppBar(),
      body: Column(
        children: [
          HeadBody(),
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
