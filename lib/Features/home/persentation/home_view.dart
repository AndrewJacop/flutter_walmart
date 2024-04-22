import 'package:flutter/material.dart';
import 'package:flutter_walmart/features/account/views/account_screen.dart';
import 'package:flutter_walmart/features/home/persentation/widget/home_body.dart';
import 'package:flutter_walmart/features/home/persentation/widget/appbar/custom_head_body.dart';
import 'package:flutter_walmart/features/mylists/view/my_list_screen.dart';
import 'package:flutter_walmart/features/search/views/search_screen.dart';
import 'package:flutter_walmart/features/services/views/services_screen.dart';
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
    AdvertisingSection(), // Example placeholder for search page
    const MyListsScreen(), // Example placeholder for cart page
    const SearchScreen(),
    const ServicesScreen(), // Example placeholder for cart page
    const AccountScreen(),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
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
