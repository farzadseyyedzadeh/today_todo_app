import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:today_todo_app/theme/my_color.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final bool isDone;
  final DateTime doneTime;
  final void Function(bool?)? onPressed;
  final Function(BuildContext)? onCheck;
  final Function(BuildContext)? deleteFunction;
  const TaskCard(
      {super.key,
      required this.title,
      required this.isDone,
      required this.onPressed,
      required this.onCheck,
      required this.doneTime,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
      child: Slidable(
        startActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: onCheck,
            icon: Icons.done,
            backgroundColor: MyColor().coolGrey,
            borderRadius: BorderRadius.circular(20.0),
          )
        ]),
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: MyColor().fireEngineRed,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ]),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          margin: const EdgeInsets.all(0),
          color: MyColor().spaceCadet,
          child: Row(
            children: [
              Checkbox(
                value: isDone,
                onChanged: onPressed,
                checkColor: MyColor().antiFlashWhite,
                activeColor: MyColor().pantoneRed,
              ),
              isDone
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 17.0,
                              color: MyColor().antiFlashWhite,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          'completed  $doneTime',
                          style: TextStyle(color: MyColor().antiFlashWhite),
                        )
                      ],
                    )
                  : Text(
                      title,
                      style: TextStyle(
                          color: MyColor().antiFlashWhite, fontSize: 19.0),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
