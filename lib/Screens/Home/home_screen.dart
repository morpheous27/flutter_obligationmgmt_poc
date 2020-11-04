import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/body.dart';
import 'package:food_web/Screens/Home/Components/footer.dart';
import 'package:food_web/constant.dart';

import 'Components/header.dart';
import 'Components/menu_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: kLightGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            MenuBar(),
            Body(),
            Spacer(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
