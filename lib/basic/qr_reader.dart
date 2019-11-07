import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';
import 'package:permission/permission.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = "QR Code Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QR Scan Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                data,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              RaisedButton(
                onPressed: () {
                  scanQR();
                },
                child: Text("Scan QR"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void scanQR() async {
    String message = "-";

    List<Permissions> permissions =
        await Permission.getPermissionsStatus([PermissionName.Camera]);
    Permissions permissionsCamera = permissions[0];
    if (permissionsCamera.permissionStatus != PermissionStatus.allow) {
      message = "Camera permission required.";
    } else {
      message = await scan();
    }

    setState(() {
      data = message;
    });
  }
}
