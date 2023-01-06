import 'dart:math';
import 'package:flutter/widgets.dart';

import 'constant.dart';
import 'repeatContainer.dart';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});

   int height=0 ;
   int weight=0 ;
 late double _bmi ;
 
  String calculateBMI(){
    _bmi = weight / pow(height /100 , 2 );
    return _bmi.toStringAsFixed(1);
  }

 String getResult(){
  if(_bmi>=25){
    return 'OverWeight';

  }
  else if (_bmi > 18.5){
    return 'Normal';
  }
  else{
    return 'UnderWeight';
  }
 }

 String getInterpretation(){
  if(_bmi>=25){
    return 'You have a higher than normal body Weight. try to Exercise.';

  }
  else if (_bmi > 18.5){
    return 'You have a normal body Weight. Good Job';
  }
  else{
    return 'You have a lower than normal body weight . You can eat a bit more';
  }
 }
}