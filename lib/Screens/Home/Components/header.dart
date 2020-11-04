import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';

import 'menu_item.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
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
          Image.asset(
            "assets/images/black_logo.png",
            height: 50,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 20),
          /* DefaultButton(
            text: "Obligation Management",
            press: () {},
          ) */
          Spacer(),
          Text(
            "Obligation Management".toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white),
          ),
          Spacer(),
          MenuItem(
            title: "Jack Jones",
            press: () {},
            textStyle: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          MenuItem(
              title: "Logout",
              press: () {},
              textStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))
        ],
      ),
    );
  }
}
