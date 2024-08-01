import 'package:flutter/material.dart';
import 'package:today_todo_app/screens/login_screen.dart';
import 'package:today_todo_app/theme/my_color.dart';
import 'package:today_todo_app/widgets/my_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                      labelText: 'Email', border: InputBorder.none),
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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: MyColor().antiFlashWhite,
                    borderRadius: BorderRadius.circular(20.0)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password', border: InputBorder.none),
                ),
              ),
              MyButton(text: 'sign up', onPressed: () {}, myWidth: 200.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: TextStyle(color: MyColor().spaceCadet),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        });
                      },
                      child: Text(
                        'Login',
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
