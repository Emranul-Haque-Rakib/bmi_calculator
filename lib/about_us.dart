import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: activecolor,
          title: Text("BMI Calculator"),
        ),
        body: one());
  }
}

class one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              // border: Border.all(color: Colors.black)
            ),
            child: Image.asset('image/DeepDive.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Our goal is to make awesome apps that will help people and make their life easier.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(28.00),
            alignment: Alignment.centerLeft,
            child: Text(
              " Developer:\n Emranul Haque Rakib",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
