import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key,required this.hintText,required this.pass,});
final String hintText;
final bool pass;
  @override
  Widget build(BuildContext context) {
    return  Padding(
           padding: const EdgeInsets.symmetric(horizontal: 18),
           child: TextField(
                 obscureText: pass,
                 decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: hintText,
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
              
            )
            ,focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            )
                 ),
               ),
         );
  }
}