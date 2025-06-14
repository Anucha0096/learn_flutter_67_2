// Step 8: stateful widget
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;
  
  void addquantity() {
    setState(() {
      quantity++;
    });
  }

  void subtractquantity() {
    setState(() {
      quantity = (quantity > 0) ? quantity - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Quantity: $quantity",style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: addquantity,child: Text("Add")),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: subtractquantity,
                child: Text("Subtract"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}