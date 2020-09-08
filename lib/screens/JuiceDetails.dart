import 'package:diet_app_ui/widgets/Texts.dart';
import 'package:flutter/material.dart';

class JuiceDetails extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final Color textcolor;

  JuiceDetails({
    this.color,
    this.title,
    this.image,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    List<String> desserts = [
      'images/cup2.png',
      'images/cup3.png',
      'images/cup4.png',
    ];
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_cart_outlined, size: 30),
          ),
        ],
        elevation: 0,
        backgroundColor: color,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              right: -100,
              top: 50,
              child: Hero(
                tag: image,
                child: Image.asset(
                  image,
                  width: 350,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts(
                  text: title,
                  fontweight: FontWeight.w600,
                  fontsize: 26,
                  textcolor: textcolor,
                ),
                Texts(
                  text: 'Frozen Blue Berries',
                  fontweight: FontWeight.normal,
                  fontsize: 18,
                  textcolor: textcolor,
                ),
                Texts(
                  text: 'Banana',
                  fontweight: FontWeight.normal,
                  fontsize: 18,
                  textcolor: textcolor,
                ),
                Texts(
                  text: 'Strawberry Juice',
                  fontweight: FontWeight.normal,
                  fontsize: 18,
                  textcolor: textcolor,
                ),
                Texts(
                  text: 'Vitamin C\nHealthy',
                  fontweight: FontWeight.w600,
                  fontsize: 18,
                  textcolor: textcolor,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Icon(Icons.star, color: textcolor),
                    ),
                    Texts(
                      text: '4.8',
                      fontweight: FontWeight.w600,
                      fontsize: 18,
                      textcolor: textcolor,
                    ),
                  ],
                ),
                Texts(
                  text: 'Starting from',
                  fontweight: FontWeight.normal,
                  fontsize: 18,
                  textcolor: textcolor,
                ),
                Texts(
                  text: '20',
                  fontweight: FontWeight.w600,
                  fontsize: 20,
                  textcolor: textcolor,
                ),
                Texts(
                  text: 'Promotional Price',
                  fontweight: FontWeight.normal,
                  fontsize: 18,
                  textcolor: textcolor,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        letterSpacing: 0.5,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Texts(
                  text: 'Suggested Desserts',
                  textcolor: textcolor,
                  fontweight: FontWeight.w600,
                  fontsize: 18,
                ),
                Texts(
                  text: 'Here are different flavours of your favorite dessert',
                  fontweight: FontWeight.normal,
                  textcolor: textcolor,
                  fontsize: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(
                      desserts.length,
                      (index) {
                        return Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(desserts[index], width: 120),
                        );
                      },
                    ).toList()
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
