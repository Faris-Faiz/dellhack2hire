import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class twoText extends StatelessWidget {
  final String text;
  final String desc;

  const twoText({required this.text,required this.desc});
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        SizedBox(
          width: 20,
        ),
        Text(text,
          // Text(
          //   'Lucky Draw No.',
          //
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,

          ),
        ),
        SizedBox(
          width: 150,
        ),
        Text( desc,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );

  }
}