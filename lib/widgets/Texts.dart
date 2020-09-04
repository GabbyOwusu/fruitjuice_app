import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final double fontsize;
  final String text;
  final FontWeight fontweight;

  Texts({this.fontsize, this.text, this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: fontweight,
          fontSize: fontsize,
          letterSpacing: 0.5,
          fontFamily: 'Gilroy',
        ),
      ),
    );
  }
}
