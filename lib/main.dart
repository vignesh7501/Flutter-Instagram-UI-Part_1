import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/InstaScreens/loginScreen.dart';
import 'package:flutter_instagram_ui/InstaScreens/homeScreen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Instagram UI',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new HomeScreen()
      },
    );
  }
}
