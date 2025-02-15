import 'package:flutter/material.dart';
import 'package:today_todo_app/theme/my_color.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.myWidth});
  final void Function()? onPressed;
  final String text;
  final double myWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColor().spaceCadet,
          foregroundColor: MyColor().antiFlashWhite),
      child: Container(
        width: myWidth,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
