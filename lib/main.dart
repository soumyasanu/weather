import 'package:flutter/material.dart';
import 'package:weather/Activity/home.dart';
import 'package:weather/Activity/loading.dart';
import 'package:weather/Activity/locaton.dart';

void main() {
  runApp(MaterialApp(
    //home: Home(),
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/location": (context) => Location(),
    },
  ));
}
