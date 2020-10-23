import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //return  a state instance of Counter screen
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<CounterScreen> {
  int _counter = 0;

  void plusOperation() {
    setState(() {
      _counter++;
    });
  }

  void minusOperation() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var plusButton = FloatingActionButton(
      backgroundColor: Colors.green,
      child: Text('+'),
      onPressed: () {
        plusOperation();
      },
    );

    var minusButton = FloatingActionButton(
      backgroundColor: Colors.red,
      child: Text('-'),
      onPressed: () {
        minusOperation();
      },
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Counter screen'),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: Center(
              child: Column(children: <Widget>[
                Text(
                  '$_counter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 100),
                Container(margin: EdgeInsets.only(top: 20), child: plusButton),
                Container(margin: EdgeInsets.only(top: 20), child: minusButton),
              ]),
            )));
  }
}
