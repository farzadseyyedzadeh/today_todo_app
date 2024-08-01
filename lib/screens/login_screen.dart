import 'package:flutter/material.dart';
import 'package:today_todo_app/screens/signup_screen.dart';
import 'package:today_todo_app/theme/my_color.dart';
import 'package:today_todo_app/widgets/my_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor().coolGrey,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/login.gif',
                width: double.infinity,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: MyColor().antiFlashWhite,
                    borderRadius: BorderRadius.circular(20.0)),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Username', border: InputBorder.none),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: MyColor().antiFlashWhite,
                    borderRadius: BorderRadius.circular(20.0)),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Password', border: InputBorder.none),
                ),
              ),
              MyButton(text: 'login', onPressed: () {}, myWidth: 200.0),
              TextButton(
                onPressed: () {},
                child: Text(
                  'forgot password?',
                  style: TextStyle(color: MyColor().spaceCadet),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(color: MyColor().spaceCadet),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ));
                        });
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                            fontSize: 16.0, color: MyColor().fireEngineRed),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
