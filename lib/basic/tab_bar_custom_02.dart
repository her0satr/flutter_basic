import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TabBar myTab = TabBar(
    indicator: BoxDecoration(
        color: Colors.red,
        border: Border(top: BorderSide(color: Colors.purple, width: 5))),
    indicatorColor: Colors.red,
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.comment),
        text: "Comment",
      ),
      Tab(
        icon: Icon(Icons.computer),
        text: "Computer",
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Contoh Tab Bar"),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTab.preferredSize.height),
                  child: Container(color: Colors.amber, child: myTab))),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
