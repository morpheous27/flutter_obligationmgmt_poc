import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey,
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
          SizedBox(width: 20),
          /* Text(
            "Search",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ), */
          SizedBox(width: 15),
          SizedBox(
            width: 400,
            height: 30,
            child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search for obligation',
                    labelStyle: TextStyle(color: Colors.white))),
          ),
          Icon(Icons.search, color: Colors.white),
          Spacer(),
          DefaultButton(
            text: "Add new Obligation",
            press: () {},
          ),
        ],
      ),
    );
  }
}
