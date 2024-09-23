import 'package:event_app/view/OnBoardingScreen/home/home.dart';
import 'package:flutter/material.dart';

import 'image_strings.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _currentPageIndex = 0;

  final _screens = const [HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: Color(0xff0A0C16),
          // backgroundColor: Colors.white
        ),
        child: NavigationBar(
          selectedIndex: _currentPageIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) =>
              setState(() => _currentPageIndex = index),
          destinations: [
            NavigationDestination(
              icon: Image.asset(homeIcon),
              selectedIcon: Image.asset(homeIconSelected),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(folderIcon),
              selectedIcon: Image.asset(folderIconSelected),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(addIcon),
              selectedIcon: Image.asset(deleteIcon),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(chatIcon),
              selectedIcon: Image.asset(chatIconSelected),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(profileIcon),
              selectedIcon: Image.asset(profileIconSelected),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
