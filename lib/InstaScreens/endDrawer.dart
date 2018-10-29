import 'package:flutter/material.dart';

class EndDrawer extends StatefulWidget {
  @override
  _EndDrawerState createState() => new _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 1.0,
        title: new Text(
          'Direct',
          style: new TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          new GestureDetector(
            child: new Icon(
              Icons.add,
              color: Colors.black,
              size: 35.0,
            ),
          )
        ],
      ),
    );
  }
}
