import 'package:flutter/material.dart';

class NishuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful & Stateless',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navigation"),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}