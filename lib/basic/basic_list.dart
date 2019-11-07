import 'package:basic/basic/animated.dart';
import 'package:basic/basic/appbar_custom_01.dart';
import 'package:basic/basic/appbar_custom_02.dart';
import 'package:basic/basic/button.dart';
import 'package:flutter/material.dart';

class BasicListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                openPage(context, "App Bar 1", AppBarPage01()),
                openPage(context, "App Bar 2", AppBarPage02()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                openPage(context, "Animation", AnimationPage()),
                openPage(context, "Button", ButtonPage()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox openPage(BuildContext context, String text, Widget page) {
    return SizedBox(
      width: 150,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
        child: Text(text),
      ),
    );
  }
}