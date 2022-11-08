import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyAppBar(),
      ),
    );

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Appbar"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          // flexibleSpace: Image.asset(
          //   "assests/back1.jpg",
          //   fit: BoxFit.cover,
          // ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: 'Tab 1',),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 50.0,
          backgroundColor: Colors.pink,
        ),
        body: TabBarView(
          children: [
            Text("Nishu Gamage Design"),
            tab1(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    child: Center(
      child: Text('Bottom AppBar body method display test'),
    ),
  );
}