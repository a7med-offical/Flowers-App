import 'package:flutter/material.dart';
import '../Constant/myTextField.dart';

class RegisterApp extends StatelessWidget {
  const RegisterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const customTextField(
          pass: false,
          hintText: 'User name',
        ),
        const SizedBox(
          height: 20,
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
          onPressed: null,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.teal)),
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
              'You already have an account ?',
              style: TextStyle(fontSize: 14),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ))
          ],
        )
      ],
    ));
  }
}
