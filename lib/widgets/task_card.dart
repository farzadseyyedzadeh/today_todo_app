import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:today_todo_app/theme/my_color.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final bool isDone;
  final DateTime doneTime;
  final void Function(bool?)? onPressed;
  final Function(BuildContext)? deleteFunction;
  const TaskCard(
      {super.key,
      required this.title,
      required this.isDone,
      required this.onPressed,
      required this.doneTime,
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
            backgroundColor: MyColor().fireEngineRed,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ]),
        child: Card(
          color: MyColor().spaceCadet,
          child: Row(
            children: [
              Checkbox(
                value: isDone,
                onChanged: onPressed,
                activeColor: Colors.green,
                checkColor: Colors.white,
              ),
              isDone
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text('completed  $doneTime')
                      ],
                    )
                  : Text(
                      title,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
