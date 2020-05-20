import 'package:flutter/material.dart';
import '../constant.dart';

class ButtomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  ButtomButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: KLargeButton,
          ),
        ),
        color: KBtnContainerColor,
        width: double.infinity,
        height: KBtnHeight,
        margin: EdgeInsets.only(top: 8),
      ),
    );
  }
}
