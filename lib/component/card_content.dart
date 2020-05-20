import 'package:flutter/material.dart';
import '../constant.dart';



class CardContent extends StatelessWidget {
  final IconData cardIcon;
  final String title;

  const CardContent({this.cardIcon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style:KTextStyle,
        )
      ],
    );
  }
}