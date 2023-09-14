// ignore_for_file: depend_on_referenced_packages

import 'package:booking_app/screens/favorite/favorite.dart';
import 'package:booking_app/screens/home/home.dart';
import 'package:booking_app/screens/profile/profile.dart';
import 'package:booking_app/screens/search/search.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _currentIndex = 0;
  final List<Widget> listScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [Icons.home, Icons.search, Icons.favorite, Icons.person],
        activeIndex: _currentIndex,
        backgroundColor: Colors.blue,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        activeColor: Colors.white,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
