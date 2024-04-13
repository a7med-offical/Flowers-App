// ignore_for_file: prefer_const_constructors

import 'package:app/Screens/Home_Screen.dart';
import 'package:app/Screens/RegisterApp.dart';
import 'package:flutter/material.dart';
import '../Constant/myTextField.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  'data:image/jpeg;base64,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'),
              Text(
                'Flower App',
                style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              const customTextField(
                pass: false,
                hintText: 'Enter your Email',
              ),
              const SizedBox(
                height: 20,
              ),
              const customTextField(
                pass: true,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.lightBlue)),
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You don\'t have an account ?',
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterApp();
                        }));
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
