import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_project/form/form-test.dart';
import 'asynchronous/network_request.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => NishuApp(),
      ),
    );

class NishuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}