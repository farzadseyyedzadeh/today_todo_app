import 'package:flutter/material.dart';
import 'package:today_todo_app/screens/first_screen.dart';
import 'screens/home_screen.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
