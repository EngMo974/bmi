import '../component/buttom_button.dart';
import '../constant.dart';
import '../component/new_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  ResultPage({@required this.bmi,@required this.result,@required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: KTitle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: NewCard(
                color: KActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(result,style: KResult,),
                    Text(bmi,style: KBMI,),
                    Text(interpretation,style: KBody,textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ButtomButton(
                title: 'RE-CALCULATE',
                onTap:  () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
