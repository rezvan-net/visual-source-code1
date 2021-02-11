import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({@required  this.bmiResult,  });

  final String bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('RESIN CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result', style: kTitleTextStyle,),
              ),
            ),
          ),
          Expanded(
            flex:5,
            child: ReusableCard (colour:kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                ],
              ),
            ),
          ),
          // BottomButton(buttonTitle: 'RECALCULATE',
          //   onTap: (){
          //     Navigator.pop(context);
          //   },
          // )
        ],
      ),
    );
  }
}