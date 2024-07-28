import 'package:flutter/material.dart';
import 'package:today_todo_app/theme/my_color.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

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
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ]),
    );
  }
}
