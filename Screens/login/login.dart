import 'package:flutter/material.dart';
import 'package:login_ui/components/background.dart';
import 'package:login_ui/constants.dart';
import 'package:login_ui/reusable_card.dart';
import 'package:login_ui/results_page.dart';
import 'package:login_ui/calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int ratio = 50;

  // int total = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 100,
                right: 100,
                left: 20,
              ),
              child: Text(
                'Resin Calculator',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.only(right: 100, top: 40),
            child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('RATIO', style: kLabelTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            ratio.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            '%',
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          overlayColor: Color(0x29EB1555),
                        ),
                        child: Slider(
                          value: ratio.toDouble(),
                          min: 1.0,
                          max: 100.0,
                          activeColor: Colors.purple,
                          onChanged: (double newValue) {
                            setState(() {
                              ratio = newValue.round();
                            });
                          },
                        ),
                      ),
                    ]))),
        Container(

            padding: EdgeInsets.only(top: 30, left: 80, right: 50),
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(),
                  decoration: InputDecoration(labelText: "Total Amount"),
                  scrollPadding: EdgeInsets.only(bottom: 100),
                  cursorColor: Colors.purple,
                ),
              ]),
            )),
        Container(
          padding: EdgeInsets.only(left: 120),
          alignment: Alignment.centerRight,
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: RaisedButton(
            onPressed: () {

            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              // width: size.width * 0.5,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: new LinearGradient(colors: [
                    Colors.purple.shade800,
                    Colors.purple.shade300
                  ])),
              padding: const EdgeInsets.all(0),
              child: Text(
                "Calculate",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
