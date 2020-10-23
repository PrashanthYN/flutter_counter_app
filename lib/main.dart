
import 'package:demo_one/view/counter.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(DemoApp());
}

//1. stateless widget
//2. stetefulwidgets

class DemoApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'DemoCalculator',
      theme:ThemeData(
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home:CounterScreen(),
    );
  }
}

