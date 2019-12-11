import 'package:flutter/material.dart';

class TabBar01Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Contoh Tab Bar"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.comment),
                    text: "Comment",
                  ),
                  Tab(
                    child: Image(
                      image: AssetImage("asset/facebook.png"),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.computer),
                  ),
                  Tab(
                    text: "News",
                  ),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              Center(
                child: Text("Tab 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
