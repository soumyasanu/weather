import 'package:flutter/material.dart';
import 'package:weather/Activity/home.dart';
import 'package:weather/Worker/worker.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void startApp() async {
    worker instance = worker("Jaipur");
    await instance.getData();
    print(instance.air_speed);
    print(instance.description);
    print(instance.temp);
  }

  @override
  void initState() {
    // TODO: implement initState

    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          ElevatedButton.icon(
            icon: Icon(
              Icons.home,
              color: Colors.green,
              size: 30.0,
            ),
            label: Text('Go to Home'),
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
          )
        ],
      ),
    ));
  }
}
