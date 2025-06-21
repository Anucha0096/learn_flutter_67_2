// Step 8: stateful widget
// Step 9: listview widget
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  //   int quantity = 10;

  //   void addquantity() {
  //     setState(() {
  //       quantity++;
  //     });
  //   }

  //   void subtractquantity() {
  //     setState(() {
  //       quantity = (quantity > 0) ? quantity - 1 : 0;
  //     });
  //   }

  // Step 9: listview widget
  List data = ["สมชาย", "สมหญิง", "สมจิตร", "สมศรี", "สมปอง"];

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text("Quantity: $quantity",style: TextStyle(fontSize: 20)),
    //       SizedBox(height: 20),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(onPressed: addquantity,child: Text("Add")),
    //           SizedBox(width: 20),
    //           ElevatedButton(
    //             onPressed: subtractquantity,
    //             child: Text("Subtract"),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blueAccent,
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          child: Text(
            data[index],
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
      itemCount: data.length,
    );
  }
}
