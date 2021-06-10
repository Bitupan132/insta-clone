import 'package:flutter/material.dart';

import 'insta_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme:
              TextTheme(headline6: TextStyle(color: Colors.black))),
      home: InstaHomePage(),
    );
  }
}
