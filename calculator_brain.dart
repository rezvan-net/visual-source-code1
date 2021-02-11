
import 'dart:math';
class CalculatorBrain {

  CalculatorBrain({this.ratio, this.total,});

  final int ratio;
  final int total;

  double _bmi;

  String calculateBMI(){
    _bmi = total*ratio/100;
    return _bmi.toStringAsFixed(1);
  }
}