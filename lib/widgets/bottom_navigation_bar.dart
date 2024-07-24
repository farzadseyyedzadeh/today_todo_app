import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.checklist_rounded), label: 'home'),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'favorite',
      ),
    ]);
  }
}
