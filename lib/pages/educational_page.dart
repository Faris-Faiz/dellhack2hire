import 'package:flutter/material.dart';

class educational_page extends StatelessWidget {
  const educational_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/map2.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}