import 'dart:math';

import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Latihan Animated Container")),
            body: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: AnimatedContainer(
                  color: Color.fromARGB(255, random.nextInt(256),
                      random.nextInt(256), random.nextInt(256)),
                  duration: Duration(seconds: 1),
                  width: 50.0 + random.nextInt(201),
                  height: 50.0 + random.nextInt(201),
                ),
              ),
            )));
  }
}
