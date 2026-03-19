import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          activeIcon: Icon(Icons.calendar_month),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_2_outlined),
          activeIcon: Icon(Icons.filter_2),
          label: 'Overview',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_3_outlined),
          activeIcon: Icon(Icons.filter_3),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_4_outlined),
          activeIcon: Icon(Icons.filter_4),
          label: 'Profile',
        ),
      ],
    );
  }
}
