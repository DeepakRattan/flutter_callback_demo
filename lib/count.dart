import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  // VoidCallback is a function that have no arguments and return no data.
  // Use of VoidCallback is great for identifying callback events with no expected value
  final VoidCallback onCountSelect;
  // To return integer value to parent CounterScreen
  final Function(int) onCountChange;

  const Count(
      {@required this.count, this.onCountSelect, @required this.onCountChange});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 40.0,
            ),
            onPressed: () => onCountChange(1),
          ),
          FlatButton(
            child: Text(
              '$count',
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            onPressed: () => onCountSelect(),
          ),
          IconButton(
            icon: Icon(
              Icons.remove,
              color: Colors.white,
              size: 40.0,
            ),
            onPressed: () => onCountChange(-1),
          )
        ],
      ),
    );
  }
}
