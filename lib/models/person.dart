// Step 10 : make a model for store data

// class Person {
//   String name;
//   int age;
//   String job;

//   // Constructor
//   Person({required this.name, required this.age, required this.job});
// } 

// List<Person> personList = [
//   Person(name: "สมชาย", age: 30, job: "Engineer"),
//   Person(name: "สมหญิง", age: 28, job: "Doctor"),
//   Person(name: "สมจิตร", age: 25, job: "Teacher"),
//   Person(name: "สมศรี", age: 35, job: "Designer"),
//   Person(name: "สมปอง", age: 40, job: "Manager"),
// ];

// Step 11 : use a enum
import 'package:flutter/material.dart';

enum Job { 
  Engineer(title: "Engineer", image: "assets/images/download.jpg", colors: Colors.blue),
  Doctor(title: "Doctor", image: "assets/images/download.jpg", colors: Colors.red),
  Teacher(title: "Teacher", image: "assets/images/download.jpg", colors: Colors.green),
  Artist(title: "Artist", image: "assets/images/download.jpg", colors: Colors.purple),
  Chef(title: "Chef", image: "assets/images/download.jpg", colors: Colors.orange);

  final String title;
  final String image; 
  final Color colors;
  // Constructor
  const Job({required this.title, required this.image, required this.colors});
}
  
class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
} 

List<Person> personList = [
  Person(name: "สมชาย", age: 30, job: Job.Engineer),
  Person(name: "สมหญิง", age: 28, job: Job.Doctor),
  Person(name: "สมจิตร", age: 25, job: Job.Teacher), 
  Person(name: "สมศรี", age: 35, job: Job.Artist),
  Person(name: "สมปอง", age: 40, job: Job.Chef),  
];