import 'package:flutter/material.dart';

import 'instaHome.dart';

class SimpleHomePageUI extends StatefulWidget {
  const SimpleHomePageUI({Key? key}) : super(key: key);

  @override
  _SimpleHomePageUIState createState() => _SimpleHomePageUIState();
}

class _SimpleHomePageUIState extends State<SimpleHomePageUI> {
  // navigate around the bottom nav bar
  int _selected = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selected = index;
    });
  }

  // different pages to navigate to
  final List<Widget> __pages = [
    InstegramHomeUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: __pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
