import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'QuoteScreen.dart';
import 'favourite_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> screens = [
    QuoteScreen(),
    FavouriteScreen(),
  ];

  void setScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: screens[_selectedIndex], // Show selected screen
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.black,
        barItems: [
          BarItem(title: "Quotes", icon: Icons.home),
          BarItem(title: "Favorites", icon: Icons.favorite),
        ],
        selectedIndex: _selectedIndex,
        onButtonPressed: setScreen,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        iconSize: 30,
      ),

    );
  }
}
