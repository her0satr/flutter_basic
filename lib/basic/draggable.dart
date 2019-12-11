import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Latihan Draggable")),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Draggable<Color>(
                      data: color1,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1,
                          shape: StadiumBorder(),
                        ),
                      ),
                      childWhenDragging: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        ),
                      ),
                      feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1.withOpacity(0.5),
                          shape: StadiumBorder(),
                        ),
                      ),
                    ),
                    Draggable<Color>(
                      data: color2,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2,
                          shape: StadiumBorder(),
                        ),
                      ),
                      childWhenDragging: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        ),
                      ),
                      feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2.withOpacity(0.5),
                          shape: StadiumBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                DragTarget<Color>(
                  onWillAccept: (value) => true,
                  onAccept: (value) {
                    isAccepted = true;
                    targetColor = value;
                  },
                  builder: (context, candidates, rejected) {
                    return (isAccepted) ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      ) : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        ),
                      );
                  },
                )
              ],
            )));
  }
}
