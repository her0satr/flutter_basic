import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.explicit),
                  suffixIcon: Icon(Icons.extension),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  prefixText: "Name : ",
                  prefixStyle: TextStyle(color: Colors.blue),
                  labelText: "Nama Lengkap :",
                  hintText: "Nama Langkapnya lho",
                  hintStyle: TextStyle(color: Colors.black26, fontSize: 10),
                ),
                maxLength: 5,
                obscureText: false,
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
