import 'package:flutter/material.dart';
import 'package:today_todo_app/models/task.dart';

class TaskCard extends StatelessWidget {
  final String title;
  bool isDone;
  void Function()? onPressed;
  TaskCard(
      {super.key,
      required this.title,
      required this.isDone,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final task = Task(title: title, isDone: isDone, onPressed: onPressed);
    return Card(
      child: Row(
        children: [
          Checkbox(value: task.isDone, onChanged: (value) {}),
          Text(task.title),
        ],
      ),
    );
  }
}
