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
      body: Container(
        color: Colors.pink,
        // width: 300,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Text(
              'Text 1',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Text 2',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Text 3',
              style: TextStyle(fontSize: 20),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Text 4',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Text 5',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Text 6',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}