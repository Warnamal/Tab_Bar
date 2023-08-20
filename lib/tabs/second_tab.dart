import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepPurple[300],
        child: Center(
          child: Text(
            '2nd Tab',
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}