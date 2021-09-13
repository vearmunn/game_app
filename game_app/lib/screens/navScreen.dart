import 'package:flutter/material.dart';
import 'package:game_app/screens/main_page.dart';
import 'package:game_app/screens/streaming_page.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  List<Widget> chosenPage = [
    MainPage(),
    StreamingPage(),
    Center(child: Text('Screen 3')),
    Center(child: Text('Screen 4')),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chosenPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset_outlined),
            label: 'ea',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_stream_outlined),
            label: 'ea',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'ea',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ea',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex,
        onTap: onTap,
      ),
    );
  }
}
