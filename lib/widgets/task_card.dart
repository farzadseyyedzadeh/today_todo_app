import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final bool isDone;
  final void Function(bool?)? onPressed;
  final Function(BuildContext)? deleteFunction;
  const TaskCard(
      {super.key,
      required this.title,
      required this.isDone,
      required this.onPressed,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ]),
        child: Card(
          color: Colors.blueGrey.shade200,
          child: Row(
            children: [
              Checkbox(
                value: isDone,
                onChanged: onPressed,
                activeColor: Colors.green,
                checkColor: Colors.white,
              ),
              Text(
                title,
                style: TextStyle(
                  decoration:
                      isDone ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
