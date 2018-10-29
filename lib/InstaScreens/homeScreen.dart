import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/InstaScreens/cameraInsta.dart';
import 'package:flutter_instagram_ui/InstaScreens/endDrawer.dart';

import 'package:flutter_instagram_ui/bottomIconScreen/homeBottomIconScreen.dart';
import 'package:flutter_instagram_ui/bottomIconScreen/searchBottomIconScreen.dart';
import 'package:flutter_instagram_ui/bottomIconScreen/plusBottomIconScreen.dart';
import 'package:flutter_instagram_ui/bottomIconScreen/likeBottomIconScreen.dart';
import 'package:flutter_instagram_ui/bottomIconScreen/accountBottomIconScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentTab = 0;

  List<Widget> page;
  var _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = new HomeBottomIconScreen();

    page = [
      new HomeBottomIconScreen(),
      new SearchBottomIconScreen(),
      new PlusBottomIconScreen(),
      new LikeBottomIconScreen(),
      new AccountBottomIconScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var _textStyle = new TextStyle(fontSize: 0.0);

    var _bottomItems = new BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: (int index) {
        setState(() {
          _currentTab = index;
          _currentPage = page[index];
        });
      },
      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.add_box,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.favorite,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
        ),
      ],
    );

    return new MaterialApp(
      home: new Scaffold(bottomNavigationBar: _bottomItems, body: _currentPage),
    );
  }
}
