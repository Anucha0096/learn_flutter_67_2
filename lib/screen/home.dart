// Step 4: sperete the home widget into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Step 5: container, column, row, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // Step 6: Image widget
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/download.jpg", width: 150, height: 150,),
        const SizedBox(height: 10,),
        Image.network(  
          "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
          width: 150,
          height: 150, 
        )
        ],
    );

    // return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisAlignment: MainAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.end,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // mainAxisAlignment: MainAxisAlignment.spaceAround,
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    // crossAxisAlignment: CrossAxisAlignment.stretch,

    // return Row(
    // mainAxisAlignment: MainAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisAlignment: MainAxisAlignment.end,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // mainAxisAlignment: MainAxisAlignment.spaceAround,
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    // crossAxisAlignment: CrossAxisAlignment.stretch,

    // children: [
    //   Container(
    //     color: Colors.orangeAccent,
    //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //     child: Text(
    //       "Hello",
    //       style: TextStyle(
    //         fontSize: 20,
    //         letterSpacing: 3,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),

    //   Container(
    //     color: Colors.orangeAccent,
    //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //     child: Text(
    //       "Hello",
    //       style: TextStyle(
    //         fontSize: 20,
    //         letterSpacing: 3,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    //   Container(
    //     color: Colors.orangeAccent,
    //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //     child: Text(
    //       "Hello",
    //       style: TextStyle(
    //         fontSize: 20,
    //         letterSpacing: 3,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    //   ],
    // );
  }
}
