import 'package:flutter/material.dart';
import 'package:module_08_flutter_04/todo.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: ToDoPage(),
    );
  }
}