import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/screens/screens.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 50),
              child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, DiscoverScreen.routeName);
              },
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  // no profile screen yet
                },
              ),
            ),
            label: 'Profile'),
      ],
    );
  }
}
