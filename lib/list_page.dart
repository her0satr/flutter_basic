import 'package:basic/animation_hero.dart';
import 'package:basic/audio.dart';
import 'package:basic/basic/basic_list.dart';
import 'package:basic/button_color.dart';
import 'package:basic/cover_01.dart';
import 'package:basic/cover_02.dart';
import 'package:basic/navigation/login.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List Page"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                openPage(context, "Basic Sample", BasicListPage()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                openPage(context, "Audio", AudioPage()),
                openPage(context, "Login Page", LoginPage()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                openPage(context, "Button", ButtonPage()),
                openPage(context, "Hero", HeroPage()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                openPage(context, "Cover 1", Cover01Page()),
                openPage(context, "Cover 2", Cover02Page()),
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
