import 'package:bmi_calculator/bottombutton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusablecard.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
 
  ResultScreen({@required this.bmiWeight, @required this.bmiInterpretation, @required this.bmiResult});

  final String bmiWeight;
  final String bmiResult;
  final String bmiInterpretation;
  

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text('Your Result', style: kResultCardHeading),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kdeselectCardColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          bmiResult.toUpperCase(),
                          style: kInsideCardStyleText,
                        ),
                        Text(
                          bmiWeight,
                          style: kInsideCardStyleNumber,
                        ),
                        Text(
                          bmiInterpretation,
                          style: kInsideCardStyleLastText,
                          textAlign: TextAlign.center,
                        ),
                      ])),
            ),
            Expanded(child: BottomButton(buttonTitle: 'RE-CALCULATE ', onTap: (){Navigator.pop(context);}))
          ]),
    );
  }
}
