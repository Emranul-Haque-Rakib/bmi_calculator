import 'package:flutter/material.dart';

class floating_button extends StatelessWidget {
  floating_button({@required this.icon, @required this.onPressed});

  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      child: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
    throw UnimplementedError();
  }
}
