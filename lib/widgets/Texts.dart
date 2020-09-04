import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final double fontsize;
  final String text;
  final FontWeight fontweight;
  final Color textcolor;

  Texts({this.fontsize, this.text, this.fontweight, this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      child: Text(
        text,
        style: TextStyle(
          color: textcolor,
          fontWeight: fontweight,
          fontSize: fontsize,
          letterSpacing: 0.5,
          fontFamily: 'Gilroy',
        ),
      ),
    );
  }
}
