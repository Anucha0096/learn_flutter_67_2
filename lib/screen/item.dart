// Step 8: stateful widget
// Step 9: listview widget

import 'package:flutter/material.dart';

// Step 10 : make a model for store data
import 'package:learn_flutter_67_2/models/person.dart';

// Step 12 : add google fonts
import 'package:google_fonts/google_fonts.dart';

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
  // List data = ["สมชาย", "สมหญิง", "สมจิตร", "สมศรี", "สมปอง"];

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
            // color: Colors.blueAccent,
            // Step 11 : use a enum
            color: personList[index].job.colors, // use enum color
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          // child: Text(
          //   data[index],
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),

          // Step 10 : make a model for store data
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personList[index].name,
                    // style: TextStyle(
                    //   fontSize: 24,
                    //   color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                    // ),

                    // Step 12 : add google fonts
                    style: GoogleFonts.kanit(
                      fontSize: 24,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Age :${personList[index].age}",
                    // style: TextStyle(
                    //fontSize: 18,
                    //color: Colors.white70,
                    // ),
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),

                  Text(
                    //job :${personList[index].job.title}, // use enum title
                    // Step 11 : use a enum
                    "job :${personList[index].job.title}",
                    // style: TextStyle(
                    //fontSize: 18,
                    //color: Colors.white70,
                    // ),
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),

                  Image.asset(
                    personList[index].job.image,
                    width: 50,
                    height: 50,
                  ),
                ],
            )],
          ),
        );
      },
      itemCount: personList.length,
    );
  }
}
