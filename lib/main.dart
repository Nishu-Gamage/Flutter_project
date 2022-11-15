import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_project/screens/secound_screen.dart';
import 'screens/home_page.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {

    title.text = "Nishu Gamage";
    String test = title.text;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                controller: title,
                onSubmitted: (text){
                  print(text);
                  print(test);
                },
                // onChanged: (text){
                //   print(text);
                // },
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                // obscureText: true,
                // keyboardType: TextInputType.number,
                autofocus: true,
                // enabled: false,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                ),
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),  
      ),
    );
  }
}