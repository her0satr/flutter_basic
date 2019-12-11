import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Latihan ListView 123")),
      body: ListView(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text("Tambah Data"),
              onPressed: () {
                setState(() {
                  widgets.add(Text(
                    "Data ke - " + counter.toString(),
                    style: TextStyle(fontSize: 25),
                  ));
                  counter++;
                });
              },
            ),
            RaisedButton(
              child: Text("Hapus Data"),
              onPressed: () {
                setState(() {
                  widgets.removeLast();
                  counter--;
                });
              },
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widgets,
        )
      ]),
    ));
  }
}
