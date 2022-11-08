import 'package:flutter/cupertino.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter/material.dart';

class progressBar extends StatelessWidget{
  final int currentStep;
  final String step;

  const progressBar({required this.step,required this.currentStep});
  @override
  Widget build(BuildContext context) {
    return Column(


      children: [
        Row(
          children:  [
            SizedBox(
              width: 20, height: 60,
            ),
            Text(
              step,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        StepProgressIndicator(
          totalSteps: 4,
          currentStep: currentStep,
          selectedColor: Color.fromARGB(200, 20, 92, 209),
          unselectedColor: Colors.grey,
          padding: 15,
          size: 5,

          roundedEdges: Radius.circular(20.0),

        ),

      ],

    );


  }

}