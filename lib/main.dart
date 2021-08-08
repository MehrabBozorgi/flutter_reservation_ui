import 'package:flutter/material.dart';
import 'package:flutter_camp_ui/screen/bottom_navigation_screen.dart';

import 'screen/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[200]
      ),
      home: BottomNavigationScreen(),
    );
  }
}
