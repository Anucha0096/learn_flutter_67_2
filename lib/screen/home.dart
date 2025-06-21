// Step 4: sperete the home widget into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Step 5: container, column, row, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // Step 7: Button widget
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.pinkAccent),
            onPressed: () {
              // ignore: avoid_print
              print("Button pressed");
            },
            child: Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              // ignore: avoid_print
              print("Button Pressed 2");
            },
            child: Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.pinkAccent,
              side: BorderSide(color: Colors.pinkAccent, width: 2),
            ),
            onPressed: () {
              print("Button Pressed 3");
            },
          child: Text(
            "Click Me",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              print("Button Pressed 4");
            },
            child: Text(
              "Click Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
