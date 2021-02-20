import 'package:flutter/material.dart';

import '../count.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Callback Demo',
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Count(
        count: count,
        onCountSelect: () {
          print('Clicked');
        },
        onCountChange: (int val) {
          setState(() {
            count += val;
          });
        },
      ),
    );
  }
}
