import 'package:flutter/material.dart';
import 'package:homely_knock/reusables/colors.dart';
import 'package:homely_knock/screens/home_page.dart';
import 'package:homely_knock/screens/profile_page.dart';
import 'package:homely_knock/screens/realtime_services_page.dart';
import 'package:homely_knock/screens/search_result_page.dart';
import 'package:homely_knock/screens/tracking_post_order_page.dart';

class BottomNavBarPage extends StatefulWidget {
  BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _selectedIndex = 0;
  List pages = [
    HomePage(),
    RealTimeServicesPage(),
    TrackingPostOrderPage(),
    SearchResultPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: scaffoldClr,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch_outlined),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.copy),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: buttonClr,
        unselectedItemColor: Color(0xffADB5BD),
        onTap: _onItemTapped,
      ),
    );
  }
}
