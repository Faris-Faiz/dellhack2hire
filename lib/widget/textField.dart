import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textField extends StatelessWidget{
  final String title;

  const textField({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),

      child: TextFormField(
        // controller: emailController,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: const TextStyle(
            fontSize: 16,
          ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          // ),
        ),
        style: const TextStyle(
          fontSize: 20,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your details';
          }
          if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'Please enter a valid detail';
          }
          return null;
        },
        keyboardType: TextInputType.text,
      ),
    );
  }

}