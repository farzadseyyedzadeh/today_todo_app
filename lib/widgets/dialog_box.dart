import 'package:flutter/material.dart';
import 'package:today_todo_app/widgets/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});
  final TextEditingController controller;
  final void Function()? onSave;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add new task'),
      backgroundColor: Colors.blueGrey.shade200,
      content: Container(
        height: 200.0,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'type...', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 10.0,
                ),
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
