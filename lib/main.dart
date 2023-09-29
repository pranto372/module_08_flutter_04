import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                ),
              ),
            ),
            Center(
                child: Text(
                  "John Doe",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type."),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 130,
                          width: 140,
                          child: Image.network("https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 130,
                          width: 140,
                          child: Image.network("https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 130,
                          width: 140,
                          child: Image.network("https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 130,
                          width: 140,
                          child: Image.network("https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 130,
                          width: 140,
                          child: Image.network("https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 130,
                          width: 140,
                          child: Image.network("https://media.istockphoto.com/id/1200548447/photo/young-man-taking-a-picture-with-a-dslr-camera-front-shot-at-the-beach-with-copy-space.jpg?s=170667a&w=0&k=20&c=deZRE5yeuCJsCC2Heg5_AlaFyMlqsUbqH9ItuUVqj3I="),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

