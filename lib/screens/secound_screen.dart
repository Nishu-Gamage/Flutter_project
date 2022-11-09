import 'package:flutter/material.dart';
import 'package:flutter_project/screens/appbar.dart';

class SecoundScreen extends StatelessWidget {
  const SecoundScreen({Key? key}) : super(key: key);

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
              'Secound Screen',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
