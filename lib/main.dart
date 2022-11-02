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
    return Scaffold(
      appBar: AppBar(

      ),
    );
  }
}