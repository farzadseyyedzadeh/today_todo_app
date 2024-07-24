import 'package:flutter/material.dart';
import 'package:today_todo_app/widgets/no_task.dart';
import 'package:today_todo_app/widgets/task_card.dart';

import '../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onPressed(value) {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: NoTask(),
    );
  }
}
