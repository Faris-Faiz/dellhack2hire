import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class title extends StatelessWidget{

  final String text;

  const title({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Row(
          children:  [
            SizedBox(
              width: 20, height: 20,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

      ],
    );
  }

}