import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Container"),
            ),
            body: Container(
              color: Colors.red,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              child: Container(
                width: MediaQuery.of(context).copyWith().size.width,
                height: MediaQuery.of(context).copyWith().size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Colors.amber,
                          Colors.blue,
                        ])),
                child: Center(child: Text("Container")),
              ),
            )));
  }
}
