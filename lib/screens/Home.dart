import 'package:diet_app_ui/screens/JuiceDetails.dart';
import 'package:diet_app_ui/widgets/DrawerIcon.dart';
import 'package:diet_app_ui/widgets/Juices.dart';
import 'package:diet_app_ui/widgets/TrailingIcon.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: DrawerIcon(),
        actions: [
          TrailingIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Healthy Diet',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Healthy juices of your everyone. Pick any of \n your flavor',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'images/purple.png',
                width: 250,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Blue Berry Nights',
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Frozen BlueBerry Banana \n and Rasberry juice',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Juices(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JuiceDetails(
                          image: 'images/yellow.png',
                          title: 'Melon yellow',
                          color: Colors.yellow,
                          textcolor: Colors.black,
                        ),
                      ),
                    );
                  },
                  image: 'images/yellow.png',
                  description: 'Melon, Pinneapple Juice \n Banana',
                  name: 'Melon Yellow',
                ),
                Juices(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JuiceDetails(
                          title: 'Strawberry \nfields',
                          textcolor: Colors.white,
                          image: 'images/pink.png',
                          color: Color.fromRGBO(255, 104, 127, 1),
                        ),
                      ),
                    );
                  },
                  image: 'images/pink.png',
                  description: 'Blue Berries\n Strawberry Juice',
                  name: 'Strawberry fields',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class Text {
//   String name;
//   Color color;

//   Text({this.name, this.color});
// }
