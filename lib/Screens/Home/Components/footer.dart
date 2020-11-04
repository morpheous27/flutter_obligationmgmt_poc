import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

import 'menu_item.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(20),
      height: 40,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        //borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Text(
            "@Macquarie Group Limited".toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white),
          ),
          Spacer(),
          MenuItem(
            title: "Important information",
            press: () {},
            textStyle: TextStyle(
                fontSize: footerTextFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          MenuItem(
            title: "Disclosures",
            press: () {},
            textStyle: TextStyle(
                fontSize: footerTextFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          MenuItem(
            title: "Privacy and cookies",
            press: () {},
            textStyle: TextStyle(
                fontSize: footerTextFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          MenuItem(
              title: "Sitemap",
              press: () {},
              textStyle: TextStyle(
                  fontSize: footerTextFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))
        ],
      ),
    );
  }
}
