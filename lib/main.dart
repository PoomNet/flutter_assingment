import 'package:flutter/material.dart';
import './ui/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        // "/second": (context) => SecondScreen(),
        "/": (context) => Loginpage(),
        
      },
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
                text: "camera" ,
              ),
              Tab(
                icon: Icon(Icons.add_alarm),
                text: "alarm",
              ),
              Tab(
                icon: Icon(Icons.account_box),
                text: "box",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.camera),
            Icon(Icons.add_alarm),
            Icon(Icons.account_box),
          ],
        ),
      ),
    );
  }

}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState();
//   }
// }

// class MyHomePageState extends State<MyHomePage> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'hello world',
//         ),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text("$counter"),
//           Text("sfddsag"),
//           Text("gsg"),
//         ],
//       ),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget{
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('hello world',),
//         ),
//         body:Text("$counter"),
//         floatingActionButton: IconButton(
//           icon: Icon(Icons.add),
//           onPressed: () {
//             counter++;
//             print("var $counter");
//           },
//         ),
//         );
//   }

// }
