import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_project/screens/secound_screen.dart';

import 'screens/home_page.dart';

void main() {
  runApp(NishuApp());
}

class NishuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful & Stateless',
      home: HomePage(),
    );
  }
}