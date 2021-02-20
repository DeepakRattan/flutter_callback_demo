import 'package:flutter/material.dart';
import 'package:flutter_callback_demo/screens/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Callback demo',
      home: CounterScreen(),
    );
  }
}
