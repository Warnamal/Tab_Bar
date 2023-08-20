import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.deepPurple[100],
        child: Center(
          child: Text(
            '1st Tab',
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
