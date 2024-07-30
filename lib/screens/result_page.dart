import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import '../components/ReusableCard.dart';



class ResultsPage extends StatelessWidget {
  ResultsPage({required this.interpretation, required this.bmiResult ,required this.resultText});

final  String bmiResult;
final String resultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),

               child: Text(
                'Your Result',
                style: KTitleTextStyle,

              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: KActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: ResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITEXTstyle,
                  ),
                  Text(
                  interpretation,
                    textAlign: TextAlign.center,
                    style: KBoodyTextStyle,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
