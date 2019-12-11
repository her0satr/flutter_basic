import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Flexible Layout")),
            body: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Ini adalah text yang ada di laposan tengah dari Stack.",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Align(
                  alignment: Alignment(0.9, 0.95),
                  child: RaisedButton(
                    child: Text("My Button"),
                    color: Colors.amber,
                    onPressed: () {},
                  ),
                )
              ],
            )));
  }
}
