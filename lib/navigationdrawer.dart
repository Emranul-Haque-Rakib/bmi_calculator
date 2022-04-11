import 'package:flutter/material.dart';

class navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffe81152), Color(0xffee7b72)])),
          ),
          title: Text(""
              " "),
        ),
        body: one());
  }
}

class one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoSlab',
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
                  fontFamily: 'RobotoSlab'),
            ),
          ),
        ],
      ),
    );
  }
}
