
import 'package:flutter/material.dart';
import 'package:tip_calculator/tip_calculator.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      home: Homepage(),
    );
  }
}