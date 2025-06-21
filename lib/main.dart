import 'package:flutter/material.dart';

// Step 4: sperete the home widget into its own file
// import 'screen/home.dart';

import 'package:learn_flutter_67_2/screen/item.dart';


void main() {
  // Step 1: appBar and body
  //runApp(const MyApp());

  //const app = MaterialApp(title: "My Title", home: Text("Hello World"));
  //runApp(app);
  //   runApp(
  //     MaterialApp(
  //       title: "My Title",
  //       home: Scaffold(
  //         appBar: AppBar(
  //           title: Text("My App"),
  //           backgroundColor: Colors.pinkAccent,
  //           centerTitle: true,
  //         ),
  //         body: Text("Hello Flutter"),
  //       ),
  //     ),
  //   );

  //   Step 2 : stateless widget
  var scaffold = Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        // body: Home(),

        // Step 8: stateful widget
        body: Item(),
      );
  runApp(
    MaterialApp(
      title: "My title",
      home: scaffold,
    ),
  );
}

// Step 2 stateless widget
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text("Hello Flutter");
//   }

// Step 3 container widget
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
    // return Container(color: Colors.blueAccent, width: 300, height: 300);
    // return Container(color: Colors.blueAccent, margin: EdgeInsets.all(10));
    // return Container(
    //   color: Colors.blueAccent,
    //   margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
    // );
    // return Container(
    //   color: Colors.blueAccent,
    //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    //   padding: EdgeInsets.all(20),
    //   child: Text("Hello Flutter",
    //   style: TextStyle(fontSize: 30, letterSpacing: 3),
    //   ),
    // );
    // return Center(
    //   child: Container(
    //     color: Colors.blueAccent,
    //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    //     padding: EdgeInsets.all(20),
    //     child: Text(
    //       "Hello Flutter",
    //       style: TextStyle(fontSize: 30, letterSpacing: 3),
    //     ),
    //   ),
    // );
//   }
// }
