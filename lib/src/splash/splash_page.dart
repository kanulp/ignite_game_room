import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ignite_game_room/src/home/home_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

   startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }
  @override
void initState() {
  super.initState();
  startTime();
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    body: new Center(
      child: new Image.asset('assets/images/splash.jpg'),
    ),
  );
  }
  void navigationPage() {
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
  }
}