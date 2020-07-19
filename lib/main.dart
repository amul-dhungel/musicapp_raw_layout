import 'dart:js';

import 'package:flutter/material.dart';
import 'songpage.dart';
import 'Home.dart';
import 'test.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(color: Color(0xFFF5F5F5))),
    debugShowCheckedModeBanner: false,
    initialRoute: '/Home', //hey
    routes: {
      '/Home': (context) => Home(),
      '/songpage': (context) => Songpage(),
      '/test': (context) => ExampleHomePage(),
    },
  ));
}
