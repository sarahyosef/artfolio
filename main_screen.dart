import 'package:flutter/material.dart';
import 'feed_screen.dart'; // Assuming this file contains the FeedScreen class
import 'portfolio_page.dart'; // Assuming this file contains the PortfolioScreen class

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    FeedScreen(),
    PortfolioScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/header.png',
          fit: BoxFit
              .cover, // Ensures the image covers the AppBar's title area well
          height:
              kToolbarHeight, // Sets the image height to the height of the AppBar
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.art_track_rounded), label: 'Feed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services_outlined), label: 'Portfolio'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:
            Colors.black, // Ensures the selected item is visibly highlighted
        onTap: _onItemTapped,
      ),
    );
  }
}
