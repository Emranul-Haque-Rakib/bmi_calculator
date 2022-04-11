import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/reusableContainer.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi,
      required this.bmiresult,
      required this.interpretation});

  String bmi;
  String bmiresult;
  String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Color(0xFF111323),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Text(
              "Your Result",
              style: MyNumberStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                child: ReusableContainer(
                  color: activecolor,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiresult,
                        style: mytextstyle,
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                            color: Color(0xFFEB1555),
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          interpretation,
                          style: mytextstyle,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(10.00),
              alignment: Alignment.center,
              child: Text(
                "RE-CALCULATE",
                style: mytextstyle,
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.00),
              width: double.infinity,
              height: 80.00,
            ),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}
