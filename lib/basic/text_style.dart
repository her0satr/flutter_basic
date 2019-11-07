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
      appBar: AppBar(title: Text("Latihan Text")),
      body: Center(
        child: Text("Ini adalah Text",
            style: TextStyle(
              fontFamily: "BigShouldersDisplay",
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            )),
      ),
    ));
  }
}
