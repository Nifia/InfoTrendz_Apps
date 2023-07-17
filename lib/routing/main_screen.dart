// membuat tampilan bottom navbar di main screen

import 'package:flutter/material.dart';

import '../features/menu/presentation/menu_screen.dart';
import '../features/news/presentation/home_screen.dart';
import '../features/saved/presentation/saved_screen.dart';
import '../shared/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screens = [
    const HomeScreen(),
    const SavedScreen(),
    const MenuScreen(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        items: const [
          BottomNavigationBarItem(
            label: 'Hari ini',
            icon: Icon(Icons.feed),
          ),
          BottomNavigationBarItem(
            label: 'Baca Nanti',
            icon: Icon(Icons.bookmark_border),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.reorder),
          ),
        ],
      ),
    );
  }
}
