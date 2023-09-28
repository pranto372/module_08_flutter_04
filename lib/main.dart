import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Counter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage>{

  int CountNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Positioned(
              top: 0,
                right: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
            ),
            Positioned(
              bottom: 0,
                right: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
            ),
            Positioned(
              top: 0,
                left: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                )
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
            ),
            Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black54,
                )
            ),
          ],
        ),
      ),
    );
  }
}
