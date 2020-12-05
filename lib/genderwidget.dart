import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
class GenderWidget extends StatelessWidget {
 final IconData genderIcon;
 final String genderText;
 GenderWidget({this.genderIcon, this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Icon(
          genderIcon,
          size:80,
        ),
        SizedBox(height:10),
        Text(genderText,
        style: labelText,)
      ],
    );
  }
}

