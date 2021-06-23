// @dart=2.9

import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Web",
      home: HomePage(),
    );
  }
}

