import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn(@required this.icon, @required this.text);

  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.00,
          color: Colors.white,
        ),
        SizedBox(height: 15.00),
        Text(text, style: TextStyle(fontSize: 18, color: Colors.grey))
      ],
    );
  }
}
