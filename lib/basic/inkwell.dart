import 'package:flutter/material.dart';

class InkwellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button InkWell"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                color: Colors.amber,
                child: Text("Raised Button"),
                shape: StadiumBorder(),
                onPressed: () {},
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "My Button",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // color: Colors.blue,
    );
  }
}
