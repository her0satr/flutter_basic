import 'package:flutter/material.dart';

class TextStylePage extends StatefulWidget {
  @override
  _TextStylePageState createState() => _TextStylePageState();
}

class _TextStylePageState extends State<TextStylePage> {
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
