import 'package:flutter/material.dart';

class NoTask extends StatelessWidget {
  const NoTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/images/notask.png',
          height: 250.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        const Text('There is nothing to do'),
        const Text('Add a task!'),
      ]),
    );
  }
}
