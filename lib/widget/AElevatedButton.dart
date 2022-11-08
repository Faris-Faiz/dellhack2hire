import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AElevatedButton extends StatelessWidget{
  final String text;
  final VoidCallback? onTap;

  const AElevatedButton({required this.text,this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        child: ElevatedButton(
            onPressed: onTap,
            child: Text(text)
        )
    );
  }

}