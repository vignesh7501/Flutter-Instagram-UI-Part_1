import 'package:flutter/material.dart';

class YouPage extends StatefulWidget {
  @override
  _YouPageState createState() => _YouPageState();
}

class _YouPageState extends State<YouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return new Container(
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
      child: new ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Image.asset(
                      "assets/images/your_acc.png",
                      height: 50.0,
                    ),
                    new Text("You start folloing Friend ${index + 1} "),
                    new OutlineButton(
                      onPressed: () {},
                      child: new Text("following"),
                    ),
                  ],
                ));
          }),
    );
  }
}
