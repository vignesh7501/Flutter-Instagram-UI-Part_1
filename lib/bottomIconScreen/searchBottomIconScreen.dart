import 'package:flutter/material.dart';

class SearchBottomIconScreen extends StatefulWidget {
  @override
  _SearchBottomIconScreenState createState() => _SearchBottomIconScreenState();
}

class _SearchBottomIconScreenState extends State<SearchBottomIconScreen> {
  @override
  Widget build(BuildContext context) {
    var _appBar = new Container(
//      color: Colors.white,
      padding: new EdgeInsets.only(top: 25.0),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.only(
                top: 12.0, left: 10.0, bottom: 11.0, right: 10.0),
            child: new GestureDetector(
              child: new Row(
                children: <Widget>[
                  new Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: new Text("Search",
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.grey)),
                  )
                ],
              ),
              onTap: () {},
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 2.0),
            height: 1.5,
            color: Colors.grey[300],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: PreferredSize(child: _appBar, preferredSize: Size.square(100.0)),
      body: new Container(
        child: Center(
          child: new Text("Not yet implemented"),
        ),
      ),
    );
  }
}
