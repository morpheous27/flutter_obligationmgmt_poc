import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/tabbed_view.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 160,

        /* alignment: Alignment.center,
        //height: MediaQuery.of(context).size.height / 3,
        child: Row(children: <Widget>[
          //Spacer(),
          Column(
            children: <Widget>[
              
            ],
          ),
          Row(children: <Widget>[CustomDataGrid('Obligations')])
        ]) */
        child: TabbedView());
  }
}
