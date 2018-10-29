import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/bottomIconScreen/subScreens/followingPage.dart';
import 'package:flutter_instagram_ui/bottomIconScreen/subScreens/youPage.dart';

class LikeBottomIconScreen extends StatefulWidget {
  @override
  _LikeBottomIconScreenState createState() => _LikeBottomIconScreenState();
}

class _LikeBottomIconScreenState extends State<LikeBottomIconScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var _tabController =
        new TabController(length: 2, vsync: this, initialIndex: 1);
    var _appBar = new Container(
      padding: new EdgeInsets.only(top: 25.0),
      child: new TabBar(
        tabs: [
          new Tab(
            child: new Text(
              "Following",
              style: new TextStyle(color: Colors.black),
            ),
          ),
          new Tab(
            child: new Text(
              "You",
              style: new TextStyle(color: Colors.black),
            ),
          )
        ],
        indicatorColor: Colors.black,
        controller: _tabController,
      ),
    );

    return new DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: new Scaffold(
          appBar:
              PreferredSize(child: _appBar, preferredSize: Size.square(55.0)),
          body: new TabBarView(
            children: [new FollowingPage(), new YouPage()],
            controller: _tabController,
          )),
    );
  }
}
