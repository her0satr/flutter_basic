import 'package:basic/basic/animated.dart';
import 'package:basic/basic/appbar_custom_01.dart';
import 'package:basic/basic/appbar_custom_02.dart';
import 'package:basic/basic/button.dart';
import 'package:basic/basic/card.dart';
import 'package:basic/basic/column_row.dart';
import 'package:basic/basic/container.dart';
import 'package:basic/basic/draggable.dart';
import 'package:basic/basic/flexible_layout.dart';
import 'package:basic/basic/image.dart';
import 'package:basic/basic/image_opacity.dart';
import 'package:basic/basic/inkwell.dart';
import 'package:basic/basic/list_view.dart';
import 'package:basic/basic/media_query.dart';
import 'package:basic/basic/qr_generate.dart';
import 'package:basic/basic/qr_reader.dart';
import 'package:basic/basic/space_row_column.dart';
import 'package:basic/basic/stack_align.dart';
import 'package:basic/basic/tab_bar_custom_01.dart';
import 'package:basic/basic/tab_bar_custom_02.dart';
import 'package:basic/basic/text_field_.dart';
import 'package:basic/basic/text_field_decoration.dart';
import 'package:basic/basic/text_style.dart';
import 'package:flutter/material.dart';

class BasicListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Card", CardPage()),
                  openPage(context, "Column Row", ColumnRowPage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Container", ContainerPage()),
                  openPage(context, "Draggable", DraggablePage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Flexible Layout", FlexibleLayoutPage()),
                  openPage(context, "Image Opacity", ImageOpacityPage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Image", ImagePage()),
                  openPage(context, "Inkwell", InkwellPage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "List View", ListViewPage()),
                  openPage(context, "Media Query", MediaQueryPage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "QR Reader", QrReaderPage()),
                  openPage(context, "QR Generator", QrGeneratePage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Spacer", SpacerPage()),
                  openPage(context, "Stack Layout", StackPage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Tab Bar 1", TabBar01Page()),
                  openPage(context, "Tab Bar 2", TabBar02Page()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Text Field", TextFieldPage()),
                  openPage(context, "Text Field Style", TextFieldStylePage()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  openPage(context, "Text Style", TextStylePage()),
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