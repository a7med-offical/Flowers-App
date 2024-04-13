
// ignore_for_file: prefer_const_constructors

import 'package:app/Provider/cart.dart';
import 'package:app/Screens/LoginApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {  runApp(FloweApp());
}

class FloweApp extends StatelessWidget {
  const FloweApp({super.key});
  @override
  Widget build(BuildContext context) {
   
    return ChangeNotifierProvider(
      create: (context) => cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
   
        home: LoginApp(),
      ),
    );
  }
}
