import 'package:flutter/material.dart';

class FlexibleLayoutPage extends StatefulWidget {
  @override
  _FlexibleLayoutPageState createState() => _FlexibleLayoutPageState();
}

class _FlexibleLayoutPageState extends State<FlexibleLayoutPage> {
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
                          child: SizedBox.expand(
                            child: Container(
                              color: Colors.red,
                              margin: EdgeInsets.only(right: 5),
                              child: Center(child: Wrap(
                                children: <Widget>[
                                  Text("Center"),
                                ]
                              )),
                            ),
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
