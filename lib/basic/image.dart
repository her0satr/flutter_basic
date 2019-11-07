import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Latihan Image")),
            body: Center(
              child: Container(
                color: Colors.amber,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage("asset/moon.png"),
                  fit: BoxFit.fill,
                ),
              ),
            )));
  }
}
