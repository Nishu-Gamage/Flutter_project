import 'package:flutter/material.dart';
import 'package:flutter_project/screens/appbar.dart';

class SecoundScreen extends StatelessWidget {

  String displayText = '';

  SecoundScreen(String text){
    this.displayText = text;
  } 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secound Screen'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context, MyHomePage());
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
