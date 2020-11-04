import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/add_edit_form_new.dart';

class AddEditFormTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            /* Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: SingleChildScrollView(child: AddEditForm()) */
            SingleChildScrollView(child: AddEditFormNew()));
  }
}
