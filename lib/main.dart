import 'package:flutter/material.dart';
import 'songpage.dart';
import 'Home.dart';
import 'test.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/songpage',
    routes: {
      '/Home': (context) => Home(),
      '/songpage': (context) => Songpage(),
      '/test': (context) => ExampleHomePage(),
    },
  ));
}
