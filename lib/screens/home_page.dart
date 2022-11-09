import 'package:flutter/material.dart';
import 'package:flutter_project/screens/secound_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Navigation',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder:(_){
          //     return SecoundScreen();
          //   }
          // ));
          Navigator.of(context).pushNamed('/secound');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}