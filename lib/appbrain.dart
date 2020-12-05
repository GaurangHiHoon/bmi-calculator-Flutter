import 'package:flutter/cupertino.dart';
   import 'dart:math';

class AppBrain {
  int height;
  int weight;
  double _bmi;
  AppBrain({@required this.height, @required this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String result() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String intepretation() {
    if (_bmi >= 25) {
      return 'You\'ve put on too much weight, you should exercise more!';
    } else if (_bmi >= 18.5) {
      return 'Congrats! You\'re doing great! Your weight BMI is perfectly fine!';
    } else {
      return 'You need to start eating and put on some weight!';
    }
  }
}
