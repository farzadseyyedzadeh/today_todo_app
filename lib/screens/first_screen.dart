import 'package:flutter/material.dart';
import 'package:today_todo_app/screens/login_screen.dart';
import 'package:today_todo_app/screens/signup_screen.dart';
import 'package:today_todo_app/theme/my_color.dart';
import 'package:today_todo_app/widgets/my_button.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor().coolGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 25.0, bottom: 30.0, top: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TODAY',
                  style: TextStyle(fontSize: 45.0, color: MyColor().spaceCadet),
                ),
                Text(
                  'Do it today not tomorrow',
                  style: TextStyle(color: MyColor().fireEngineRed),
                )
              ],
            ),
          ),
          Image.asset('assets/images/firstscreen.png'),
          Center(
            child: MyButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
              },
              myWidth: 200,
              text: 'Log In',
            ),
          ),
          Center(
            child: MyButton(
              myWidth: 200,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ));
              },
              text: 'Sign Up',
            ),
          ),
        ],
      ),
    );
  }
}
