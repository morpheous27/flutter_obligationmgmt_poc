import 'package:flutter/material.dart';

import '../../../constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  final TextStyle textStyle;
  const MenuItem({Key key, this.title, this.press, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: this.textStyle != null
              ? this.textStyle
              : TextStyle(
                  color: kTextcolor.withOpacity(0.3),
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }
}
