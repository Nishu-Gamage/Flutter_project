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
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asynchronous Programming"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Asynchronous Programming',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  child: Text('CLICK ME'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NetworkRequest()),
                    );
                  }),
            )
            // RaisedButton(child: Text('GET DATA'), onPressed: () {})
          ],
        ),
      ),
    );
  }
}