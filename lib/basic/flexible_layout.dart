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
            appBar: AppBar(title: Text("Flexible Layout")),
            body: Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                            margin: EdgeInsets.only(right: 5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                            margin: EdgeInsets.only(left: 5, right: 5),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.purple,
                            margin: EdgeInsets.only(left: 5),
                          ),
                        ),
                      ],
                    )),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.amber,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            )));
  }
}
