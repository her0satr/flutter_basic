import 'package:flutter/material.dart';

class ColumnRowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Row dan Column"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).copyWith().size.width,
              height: MediaQuery.of(context).copyWith().size.height / 3,
              color: Colors.lightBlue,
              child: Center(child: Text("Text 1"))),
          Text("Text 2"),
          Text("Text 3"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Text 4"),
              Text("Text 5"),
            ],
          )
        ],
      ),
    ));
  }
}
