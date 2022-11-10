import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_project/screens/secound_screen.dart';
import 'home_page.dart';


// ------------------------------------------------------------------------------------------
//                              [ Navigation Tutorial ]
// ------------------------------------------------------------------------------------------

// void main() {
//   runApp(NishuApp());
// }
// class NishuApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Stateful & Stateless',
//       home: HomePage(),
//       routes: <String,WidgetBuilder>{
//         '/secound': (context) => SecoundScreen(),
//       },
//     );
//   }
// }

// ------------------------------------------------------------------------------------------
//                              [ ListView & ListTile ]
// ------------------------------------------------------------------------------------------
// void main() {
//   runApp(NishuApp());
// }
// class NishuApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'ListView & ListTile'),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   var items = List.generate(100, (index) => "$index");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index){
//           return ListTile(
//             title: Text(items[index]+'　　test'),
//           );
//         },
//       )
//     );
//   }
// }