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
      theme: ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text("Flutter"),
      ),
      body: Container( ),
    );
  }
}