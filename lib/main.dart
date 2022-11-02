import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() =>  runApp(
  DevicePreview(
    builder: (context) => MyAppBar(),
  ),
);

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum:  EdgeInsets.only(top:30),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Appbar"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          ),
          ],
          flexibleSpace: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}