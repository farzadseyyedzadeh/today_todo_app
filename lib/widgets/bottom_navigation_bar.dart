import 'package:flutter/material.dart';
import 'package:today_todo_app/theme/my_color.dart';
import '../screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: MyColor().spaceCadet,
      height: 60.0,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      notchMargin: 5.0,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.task_alt_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
                });
              },
            ),
          ]),
    );
  }
}
