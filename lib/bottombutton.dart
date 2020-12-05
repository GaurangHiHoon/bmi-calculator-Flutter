import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;

  BottomButton({@required this.buttonTitle, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: kbottomBarHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 25.0, color: kcardColor, fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          color: kbottomColor,
        ),
      ),
    );
  }
}
