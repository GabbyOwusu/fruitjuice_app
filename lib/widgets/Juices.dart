import 'package:flutter/material.dart';

class Juices extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final Function ontap;

  Juices({
    @required this.ontap,
    @required this.description,
    @required this.image,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Hero(
            tag: image,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                width: 180,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
