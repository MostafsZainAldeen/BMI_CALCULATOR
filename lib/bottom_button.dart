import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KBootonCALCULATE,
          ),
        ),
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KBottomHeight,
      ),
    );
  }
}
