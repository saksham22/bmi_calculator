import 'dart:math';
class Calculator{
  Calculator({this.height,this.weight});
  final int height;
  final int weight;
   double _bmi;
  String calBMI(){
    _bmi=weight /pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResults(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if (_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getinfo(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Exercise more';
    }
    else if (_bmi>18.5){
      return 'You have a normal body weight. Keep it up';
    }
    else{
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}