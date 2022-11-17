import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    print('this is a init state');
  }

  @override
  void setState(fn) {
    super.setState(fn);
    print("Set state is called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Activity'),
        ),
        body: Column(
          children: [
            FloatingActionButton(onPressed: () => {}),
            Text('kuch nahi'),
          ],
        ));
  }
}
