import 'package:flutter/material.dart';

class foodbeverages_page extends StatelessWidget {
  const foodbeverages_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/map3.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}