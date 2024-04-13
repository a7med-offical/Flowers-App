// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
        actions: [
          Row(children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 3,bottom: 3),
                 width: 15,
  height: 22,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.grey[200],
  ),
                  child: Text('8',style: TextStyle(fontWeight: FontWeight.w500, color:   Colors.black,fontSize: 17),)),
                IconButton(onPressed: null, icon:Icon(Icons.shopping_cart,color: Colors.white,) ),
              ],
            ),
            Text('\$50',style: TextStyle(color:Colors.white,fontSize: 17),),

          ],)
        ],
      ),
      body: Column(children: []),
    );
  }
}