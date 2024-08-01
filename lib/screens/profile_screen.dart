import 'package:flutter/material.dart';
import 'package:today_todo_app/theme/my_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor().spaceCadet,
        foregroundColor: MyColor().antiFlashWhite,
        centerTitle: true,
        title: Text('Today'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [Text('profiel screen')],
        ),
      ),
    );
  }
}
