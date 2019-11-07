import 'package:basic/navigation/secord.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("go to Second Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecordPage();
              }));
            },
          ),
        ),
      ),
    );
  }
}
