import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: '0');

  final TextEditingController t2 = new TextEditingController(text: '0');

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);

      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);

      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);

      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);

      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doClear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
      sum = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Calculator')),
          ),
          body: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Output:$sum',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Enter Number 1'),
                  controller: t1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Enter Number 2'),
                  controller: t2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.blue,
                      child: Text('+'),
                      onPressed: doAddition,
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text('-'),
                      onPressed: doSub,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.blue,
                      child: Text('*'),
                      onPressed: doMul,
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text('/'),
                      onPressed: doDiv,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      child: Text('Clear'),
                      onPressed: doClear,
                      color: Colors.blue,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
