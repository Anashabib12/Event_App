import 'package:event_app/commons/custom_modal_sheet.dart';
import 'package:event_app/view/Chat/chat_screen.dart';
import 'package:event_app/view/HomeScreen/home_screen.dart';
import 'package:event_app/view/ProfileScreen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../Utils/Constant/image_strings.dart';
import '../view/Project Screen/project_screen.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _currentPageIndex = 0;

  final _screens = const [
    HomeScreen(),
    ProjectScreen(),
    Placeholder(),
    ChatScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        child: NavigationBar(
          selectedIndex: _currentPageIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) =>
              _onDestinationSelected(context, index),
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

  void _onDestinationSelected(BuildContext context, int index) {
    if (index == 2) {
      // Show modal sheet if the middle icon (addIcon) is selected
      showModalBottomSheet(
        context: context,
        builder: (context) =>
            const CustomModalSheet(), // Your custom modal sheet
      );
    } else {
      setState(() {
        _currentPageIndex = index;
      });
    }
  }
}
