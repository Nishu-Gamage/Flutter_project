import 'package:flutter/material.dart';

void main() {
  runApp(ScaffoldClass());
}

class ScaffoldClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold Widget'),
        ),
        body: Center(
          child: Text(
            'Nishu Gamage', 
            style: TextStyle(fontSize: 20.0),
            ),
        ),
      ),
    );
  }
}