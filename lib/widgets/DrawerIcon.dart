import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 3),
          height: 2,
          width: 13,
          color: Colors.black,
        ),
        Container(
            margin: EdgeInsets.only(bottom: 3),
            height: 2,
            width: 25,
            color: Colors.black),
        Container(
            margin: EdgeInsets.only(bottom: 3),
            height: 2,
            width: 13,
            color: Colors.black)
      ],
    );
  }
}
