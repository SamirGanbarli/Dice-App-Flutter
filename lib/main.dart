import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Şeş'),
          backgroundColor: Colors.teal,
        ),
        body: dicePage(),
      ),
    ),
  );
}

class dicePage extends StatefulWidget {
  @override
  _dicePageState createState() => _dicePageState();
}


class _dicePageState extends State<dicePage> {
  int i1 = 2;
  int i2 = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 70.0, 8.0, 0.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    'images/dic$i1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset('images/dic$i2.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,50.0,8.0,8.0),
            child: FlatButton(
              child: Text(
                'At',
                style: TextStyle(fontSize: 30.0),
              ),
              color: Colors.teal,
              minWidth: 120.0,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  i1 = Random().nextInt(6)+1;
                  i2 = Random().nextInt(6)+1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
