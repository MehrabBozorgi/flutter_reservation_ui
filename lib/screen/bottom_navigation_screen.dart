import 'package:flutter/material.dart';

import 'first_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> _screens = [];

  @override
  void initState() {
    _screens = [
      FirstScreen(),
      FirstScreen(),
      FirstScreen(),
      FirstScreen(),
      FirstScreen(),
    ];

    super.initState();
  }

  int _selectedIndex = 0;

  void _selectedScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedScreen,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.transparent,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Colors.white,
        ),

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.grey[900],

            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.grey[900],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey[900],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_rounded,
              color: Colors.grey[900],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey[900],
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
