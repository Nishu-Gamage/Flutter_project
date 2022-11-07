import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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

// ----------------------   Stateful   ---------------------->
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have pushed button times",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              // count.toString(),
              '$count',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: increment,
      ),
    );
  }
}

// ----------------------   Stateless   ---------------------->
// class HomePage extends StatelessWidget {

//   int count = 0;

//   void increment(){
//     count++;
//     print(count);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home Method"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "You have pushed button times",
//               style: TextStyle(
//                 fontSize: 25.0,
//                 ),
//               ),
//             Text(
//               // count.toString(),
//               '$count',
//               style: Theme.of(context).textTheme.displayMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: increment,
//       ),
//     );
//   }
// }
