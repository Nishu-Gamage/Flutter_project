import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyWidgetTest(),
      ),
    );

class MyWidgetTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'AppBar',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
        ),
        body: Container(
          // margin: EdgeInsets.all(20.0),
          // padding: EdgeInsets.all(50.0),
          // transform: Matrix4.rotationZ(0.2),
          // width: double.infinity,
          width: 300.0,
          height: 200.0,
          alignment: Alignment.bottomRight,
          color: Colors.amber,
          child: Text(
            'Container Widget test', 
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      );
  }
}