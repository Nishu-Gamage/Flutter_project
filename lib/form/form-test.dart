import 'package:flutter/material.dart';

class Form_Test extends StatefulWidget {
  const Form_Test({Key? key}) : super(key: key);

  @override
  State<Form_Test> createState() => _FormTestState();
}

class _FormTestState extends State<Form_Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter - Form'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Container(color: Colors.amber, height: 300,),
              Container(color: Colors.blue, height: 300,),
              Container(color: Colors.redAccent, height: 300,),
            ],
          ),
        ),
      ),
    );
  }
}
